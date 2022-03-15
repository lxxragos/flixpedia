package com.semi.flix.admin.comment;

import java.util.List;

//클래스와의 결합력을 약화시키기 위해서 나중에 바꿔치기 쉽게 하려고
public interface CommentDao {
	List<CommentDto> getList(CommentDto dto);
	void insert(CommentDto dto);
	CommentDto comment_getView(CommentDto dto);
	void comment_delete(CommentDto dto);
}
