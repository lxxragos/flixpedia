package com.semi.flix.admin.board;

import java.util.List;

//클래스와의 결합력을 약화시키기 위해서 나중에 바꿔치기 쉽게 하려고
public interface AdminBoardDao {
	List<AdminBoardDto> getList(AdminBoardDto dto);
	int getTotal(AdminBoardDto dto);
	void insert(AdminBoardDto dto);
	AdminBoardDto getView(String board_seq);
	void delete(String board_seq);
	void update(AdminBoardDto dto);
}
