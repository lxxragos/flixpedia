package com.semi.flix.movie;

import java.util.List;

import com.semi.flix.comment.CommentDto;

public interface MovieService {
	List<MovieDto> getList(MovieDto dto);
	int getTotal(MovieDto dto);
	MovieDto getView(MovieDto dto);
	
	//�뙎湲�
	List<CommentDto> commentList(CommentDto dto);
	void commentinsert(CommentDto dto);
	int commentTotal(CommentDto dto);
	
}
