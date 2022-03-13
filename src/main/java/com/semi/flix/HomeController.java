package com.semi.flix;


import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.semi.flix.drama.DramaDto;
import com.semi.flix.drama.DramaService;
import com.semi.flix.movie.MovieDto;
import com.semi.flix.movie.MovieService;
import com.semi.flix.webtoon.WebtoonDto;
import com.semi.flix.webtoon.WebtoonService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Resource(name="dramaService")
	DramaService dramaService;
	
	@Resource(name="movieService")
	MovieService movieService;
	
	@Resource(name="webtoonService")
	WebtoonService webtoonService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		//=====================  Drama  ===================//
		DramaDto dramaDto = new DramaDto();
		dramaDto.setStart(dramaDto.getPg()*10);
		List<DramaDto> dramaList = dramaService.getList(dramaDto);
		
		System.out.println("[HomeController---------------]" + dramaList);
		model.addAttribute("dramaList", dramaList);
		
		//=====================  Movie  ===================//
		
		MovieDto movieDto = new MovieDto();
		movieDto.setStart(movieDto.getPg()*10);
		List<MovieDto> movieList = movieService.getList(movieDto);
		
		System.out.println("[HomeController---------------]" + movieList);
		model.addAttribute("movieList", movieList);
		
		
		//=====================  webtoon  ===================//
		
		WebtoonDto webtoonDto = new WebtoonDto();
		webtoonDto.setStart(webtoonDto.getPg()*10);
		List<WebtoonDto> webtoonList = webtoonService.getList(webtoonDto);
		
		System.out.println("[HomeController---------------]" + webtoonList);
		model.addAttribute("webtoonList", webtoonList);
		
		return "home";
	}
	
	

	
}
