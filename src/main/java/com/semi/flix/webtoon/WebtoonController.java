package com.semi.flix.webtoon;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.flix.comment.CommentDto;

@Controller
public class WebtoonController {

	@Resource(name = "webtoonService")
	WebtoonService service;

	// �쎒�댆 紐⑸�? �럹�씠吏� �씠�룞
	@RequestMapping("/webtoon/list")
	String webtoon_list(Model model, WebtoonDto dto) {
		dto.setPageSize(12);
		dto.setStart(dto.getPg() * dto.getPageSize());

		List<WebtoonDto> list = service.getList(dto);
		int cnt = service.getTotal(dto);
		
		
		model.addAttribute("webtoonList", list);
		model.addAttribute("totalCnt", cnt);
		
		

		return "webtoon/webtoon_list";
	}

	// �쎒�댆 �긽�꽭蹂닿�? �럹�씠吏�
	@RequestMapping("/webtoon/view")
	String webtoon_view(WebtoonDto dto, CommentDto Cdto, Model model) {

		Cdto.setPageSize(4);
		Cdto.setStart(Cdto.getPg() * Cdto.getPageSize());
		
		List<CommentDto> list = service.commentList(Cdto);
		WebtoonDto resultDto = service.getView(dto);
		int commentCnt = service.commentTotal(Cdto);
		model.addAttribute("webtoonDto", resultDto);
		model.addAttribute("commentList", list);
		model.addAttribute("commentTotalCnt", commentCnt);
		return "webtoon/webtoon_view";
	}

	
	@RequestMapping(value="/comment/write")
	@ResponseBody 
	HashMap<String, String> comment_write(CommentDto dto) {
	System.out.println("comment_id : " + dto.getReview_seq()); 
	
	System.out.println("--------------> " + dto);
	//if(dto.getComment_id().equals("")) 
		service.commentinsert(dto); 
	//else
	//service.comment_update(dto);
	
	HashMap<String, String>map = new HashMap<String, String>();
	map.put("result","success"); return map; 
	}


}
