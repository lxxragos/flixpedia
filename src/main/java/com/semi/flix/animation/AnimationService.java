package com.semi.flix.animation;

import java.util.List;

import com.semi.flix.comment.CommentDto;

public interface AnimationService {
	List<AnimationDto> getList(AnimationDto dto);
	int getTotal(AnimationDto dto);
	AnimationDto getView(AnimationDto dto);
	
	//댓글
	List<CommentDto> commentList(CommentDto dto);
	void commentinsert(CommentDto dto);
	int commentTotal(CommentDto dto);
}
