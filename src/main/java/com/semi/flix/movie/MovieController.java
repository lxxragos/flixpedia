package com.semi.flix.movie;

import java.util.List;

import javax.annotation.Resource;

//import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@Resource(name="movieService")
	MovieService service;
	
	@RequestMapping("/movie/list")
	String movie_list(Model model,MovieDto dto) {
		
		dto.setPageSize(12);
		dto.setStart( dto.getPg() * dto.getPageSize());
		
		List<MovieDto> list = service.getList(dto);
		int cnt = service.getTotal(dto);
		System.out.println("[MovieController---------------]" + list);
		
		model.addAttribute("movieList",list);
		model.addAttribute("totalCnt",cnt);
		
		return "movie/movie_list";
	}
	
	@RequestMapping("/movie/view")
	String movie_view(MovieDto dto,Model model) {
		
		MovieDto resultDto = service.getView(dto);
		model.addAttribute("moiveDto",resultDto);
		return "movie/moive_view";
	}
	
	
	
	
}
