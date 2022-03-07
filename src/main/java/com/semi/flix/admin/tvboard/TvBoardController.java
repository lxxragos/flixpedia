package com.semi.flix.admin.tvboard;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.semi.flix.admin.common.AdminFileUploadUtil;

@Controller
public class TvBoardController {
	
	//@Autowired
	@Resource(name="tvboardService")
	TvBoardService service;
	
	@RequestMapping(value="/tvboard/list", method=RequestMethod.GET)
	String tvboard_list(Model model, TvBoardDto dto)
	{

		dto.setStart(dto.getPg()*10);
		
		List<TvBoardDto> list = service.getList(dto);
		
		model.addAttribute("tvboardList", list);
		model.addAttribute("totalCnt", service.getTotal(dto));
		
		return "tvboard/tvboard_list"; //jsp 파일명
	}
	
	//	/board/view?id=1
	@RequestMapping(value="/tvboard/view", method=RequestMethod.GET)
	String tvboard_view(String board_seq, Model model)
	{
		System.out.println("toString");
		TvBoardDto dto = service.getView(board_seq);
		model.addAttribute("tvboardDto",dto);
		return "tvboard/tvboard_view";
	}
	
	@RequestMapping(value="/tvboard/write")
	String tvboard_write(Model model)
	{
		model.addAttribute("tvboardDto", new TvBoardDto());
		return "tvboard/tvboard_write";
	}
	
	@RequestMapping(value="/tvboard/save")
	String tvboard_save(TvBoardDto dto, HttpServletRequest req, MultipartHttpServletRequest multi )
	{
		System.out.println("-------------->" + dto);
		
		
		List<MultipartFile> multiList = new ArrayList<MultipartFile>();
		multiList.add(multi.getFile("upload"));
		   
		   List<String> fileNameList = new ArrayList<String>();
		   String path = req.getServletContext().getRealPath("/");
		   System.out.println("물리적 위치값 : " + path);
		   AdminFileUploadUtil.upload(path, multiList, fileNameList);
		   
		   dto.setDrama_images(fileNameList.get(0));
		   
		if( dto.getBoard_seq().equals("") )
			service.insert(dto);
		else
			service.update(dto);
		
		return "redirect:/tvboard/list"; //글을쓰고나면 다시돌아가기
	}
	
	@RequestMapping(value="/tvboard/delete")
	String tvboard_delete(TvBoardDto dto)
	{
		service.delete(dto.getBoard_seq());
		
		return "redirect:/tvboard/list"; //글을쓰고나면 다시돌아가기
	}
	
	@RequestMapping(value="/tvboard/modify")
	String tvboard_modify(TvBoardDto dto, Model model)
	{
		model.addAttribute( "tvboardDto", service.getView(dto.getBoard_seq()) );
		return "tvboard/tvboard_write"; //write.jsp로 이동한다.
	}
	
}
