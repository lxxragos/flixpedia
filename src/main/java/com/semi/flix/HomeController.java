package com.semi.flix;


import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semi.flix.common.BaseDto;
import com.semi.flix.drama.DramaDto;
import com.semi.flix.drama.DramaService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Resource(name="dramaService")
	DramaService dramaService;
	
//	@Resource(name="webtoonService")
//	WebtoonService webtoonService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		DramaDto dramaDto = new DramaDto();
		dramaDto.setStart(dramaDto.getPg()*10);
		List<DramaDto> dramaList = dramaService.getList(dramaDto);
		
		System.out.println("[HomeController---------------]" + dramaList);
		model.addAttribute("dramaList", dramaList);
		
		return "home";
	}
	
	@RequestMapping(value = "/search",method = RequestMethod.GET )
	public String search(Locale locale,Model model, BaseDto baseDto)
	{
		DramaDto dramaDto = new DramaDto();
		dramaDto.setStart(dramaDto.getPg()*10);
		dramaDto.setKeyword(baseDto.getKeyword());
		
		List<DramaDto> dramaList = dramaService.getList(dramaDto);
		System.out.println("[HomeController dramaList]" + dramaList);
		model.addAttribute("dramaList", dramaList);
		
		return "home";
	}
	
}
