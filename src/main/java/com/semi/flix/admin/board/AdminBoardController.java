package com.semi.flix.admin.board;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.semi.flix.admin.common.AdminFileUploadUtil;

@Controller
public class AdminBoardController {
	
	//@Autowired
	@Resource(name="adminboardService")
	AdminBoardService service;
	
	@RequestMapping(value="admin/board/list", method=RequestMethod.GET)
	String adminboard_list(Model model, AdminBoardDto dto)
	{

		dto.setStart(dto.getPg()*10);
		
		List<AdminBoardDto> list = service.getList(dto);
		
		model.addAttribute("adminboardList", list);
		model.addAttribute("totalCnt", service.getTotal(dto));
		
		return "admin/board/board_list"; //jsp 파일명
	}
	
	//	/board/view?id=1
	@RequestMapping(value="admin/board/view", method=RequestMethod.GET)
	String adminboard_view(String board_seq, Model model)
	{
		System.out.println("toString");
		AdminBoardDto dto = service.getView(board_seq);
		model.addAttribute("adminboardDto",dto);
		return "admin/board/board_view";
	}
	
	@RequestMapping(value="admin/board/write")
	String adminboard_write(Model model)
	{
		model.addAttribute("adminboardDto", new AdminBoardDto());
		return "admin/board/board_write";
	}
	
	@RequestMapping(value="admin/board/save")
	String adminboard_save(AdminBoardDto dto, HttpServletRequest req, MultipartHttpServletRequest multi )
	{
		System.out.println("-------------->" + dto);
		
		
		List<MultipartFile> multiList = new ArrayList<MultipartFile>();
		multiList.add(multi.getFile("upload"));
		   
		   List<String> fileNameList = new ArrayList<String>();
		   String path = req.getServletContext().getRealPath("/");
		   System.out.println("물리적 위치값 : " + path);
		   AdminFileUploadUtil.upload(path, multiList, fileNameList);
		   
		   dto.setImages(fileNameList.get(0));
		   
		if( dto.getBoard_seq().equals("") )
			service.insert(dto);
		else
			service.update(dto);
		
		return "redirect:admin/board/list"; //글을쓰고나면 다시돌아가기
	}
	
	@RequestMapping(value="admin/board/delete")
	String adminboard_delete(AdminBoardDto dto)
	{
		service.delete(dto.getBoard_seq());
		
		return "redirect:admin/board/list"; //글을쓰고나면 다시돌아가기
	}
	
	@RequestMapping(value="admin/board/modify")
	String adminboard_modify(AdminBoardDto dto, Model model)
	{
		model.addAttribute( "adminboardDto", service.getView(dto.getBoard_seq()) );
		return "admin/board/board_write"; //write.jsp로 이동한다.
	}
	
	@RequestMapping(value="admin/board/writemain")
	String adminboard_main()
	{
		return "admin/board/writemain";
	}
	@RequestMapping(value="admin/board/listmain")
	String adminlist_main()
	{
		return "admin/board/listmain";
	}
}
