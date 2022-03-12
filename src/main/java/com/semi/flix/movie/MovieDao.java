package com.semi.flix.movie;

import java.util.List;

public interface MovieDao {
	List<MovieDto> getList(MovieDto dto);
	int getTotal(MovieDto dto);
	MovieDto getView(MovieDto dto);
	MovieDto getTest_Rank(MovieDto dto);
}
