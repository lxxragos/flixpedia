package com.semi.flix.admin.board;

import java.util.List;

import javax.annotation.Resource;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("adminboardService")
public class AdminBoardServiceImpl implements AdminBoardService{
	
	//@Autowired
	@Resource(name="adminboardDao")
	AdminBoardDao adminboardDao;
	
	@Override
	public List<AdminBoardDto> getList(AdminBoardDto dto) {
		return adminboardDao.getList(dto);
	}

	@Override
	public void insert(AdminBoardDto dto) {
		adminboardDao.insert(dto);
	}

	@Override
	public AdminBoardDto getView(String board_seq) {
		return adminboardDao.getView(board_seq);
	}

	@Override
	public int getTotal(AdminBoardDto dto) {
		return adminboardDao.getTotal(dto);
	}

	@Override
	public void delete(String board_seq) {
		adminboardDao.delete(board_seq);
	}

	@Override
	public void update(AdminBoardDto dto) {
		adminboardDao.update(dto);
	}

}
