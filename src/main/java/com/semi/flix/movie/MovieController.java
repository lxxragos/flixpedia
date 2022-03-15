package com.semi.flix.movie;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.flix.comment.CommentDto;

@Controller
public class MovieController {
	
	@Resource(name="movieService")
	MovieService service;
	
	@RequestMapping("/movie/list")
	String Movie_list(Model model,MovieDto dto) {
		
		dto.setPageSize(12);
		dto.setStart( dto.getPg() * dto.getPageSize());
		
	
		List<MovieDto> list = service.getList(dto);
		int cnt = service.getTotal(dto);
		
		model.addAttribute("movieList",list);
		model.addAttribute("totalCnt",cnt);
		
		return "movie/movie_list";
	}
	
	@RequestMapping("/movie/view")
	String Movie_view(MovieDto dto,CommentDto Cdto,Model model) {
		Cdto.setPageSize(4);
		Cdto.setStart(Cdto.getPg() * Cdto.getPageSize());
		
		List<CommentDto> list = service.commentList(Cdto);
		MovieDto resultDto = service.getView(dto);
		int commentCnt = service.commentTotal(Cdto);
		model.addAttribute("movieDto",resultDto);
		model.addAttribute("commentList", list);
		model.addAttribute("commentTotalCnt", commentCnt);
		return "movie/movie_view";
	}
	
	@RequestMapping(value="/movieComment/write")
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
