package com.semi.flix.movie;

import java.util.List;

public interface MovieService {
	List<MovieDto> getList(MovieDto dto);
	int getTotal(MovieDto dto);
	MovieDto getView(MovieDto dto);
	MovieDto getMovie_Rank(MovieDto dto);
}
