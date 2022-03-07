package com.semi.flix.drama;

import java.util.List;

import javax.annotation.Resource;

//import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DramaController {
	
	@Resource(name="dramaService")
	DramaService service;
	
	@RequestMapping("/drama/list")
	String Drama_list(Model model,DramaDto dto) {
		
		dto.setPageSize(12);
		dto.setStart( dto.getPg() * dto.getPageSize());
		
		List<DramaDto> list = service.getList(dto);
		int cnt = service.getTotal(dto);
		
		model.addAttribute("dramaList",list);
		model.addAttribute("totalCnt",cnt);
		
		return "drama/drama_list";
	}
	
	@RequestMapping("/drama/view")
	String Drama_view(DramaDto dto,Model model) {
		
		DramaDto resultDto = service.getView(dto);
		model.addAttribute("dramaDto",resultDto);
		return "drama/drama_view";
	}
	
	
	
	
}
