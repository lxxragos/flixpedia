package com.semi.flix.admin.board;

import java.util.List;

public interface AdminBoardService {
	List<AdminBoardDto> getList(AdminBoardDto dto);
	void insert(AdminBoardDto dto);
	AdminBoardDto getView(String board_seq);
	int getTotal(AdminBoardDto dto);
	void delete(String board_seq);
	void update(AdminBoardDto dto);
}
