package com.semi.flix.movie;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
	
	@Resource(name="movieDao")
	MovieDao movieDao;

	@Override
	public List<MovieDto> getList(MovieDto dto) {
		// TODO Auto-generated method stub
		return movieDao.getList(dto);
	}

	@Override
	public int getTotal(MovieDto dto) {
		// TODO Auto-generated method stub
		return movieDao.getTotal(dto);
	}

	@Override
	public MovieDto getView(MovieDto dto) {
		// TODO Auto-generated method stub
		return movieDao.getView(dto);
	}

	@Override
	public MovieDto getTest_Rank(MovieDto dto) {
		return movieDao.getTest_Rank(dto);
	}
	
	
}
