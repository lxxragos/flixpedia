package com.semi.flix.webtoon;

import java.util.List;

import com.semi.flix.comment.CommentDto;

public interface WebtoonService {
	List<WebtoonDto> getList(WebtoonDto dto);
	int getTotal(WebtoonDto dto);
	WebtoonDto getView(WebtoonDto dto);
	
	
	
	//댓글
	List<CommentDto> commentList(CommentDto dto);
	void commentinsert(CommentDto dto);
	int commentTotal(CommentDto dto);
	
}
