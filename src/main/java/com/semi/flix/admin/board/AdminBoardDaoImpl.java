package com.semi.flix.admin.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminboardDao")  //없으면 안된다. 스프링이 이걸 보고 객체를 만들어서 관리하기 때문에 꼭 써줘야한다.
public class AdminBoardDaoImpl implements AdminBoardDao{

	@Autowired
	SqlSessionTemplate sm; //sm객체를 통해서 디비 데이터를 읽고 쓰기를 할거다

	@Override
	public List<AdminBoardDto> getList(AdminBoardDto dto) {
		
		//dto Board.xml파일에 parameterType에 전달된다.
		return sm.selectList("AdminBoard_getList", dto);
	}

	@Override
	public void insert(AdminBoardDto dto) {
		sm.insert("AdminBoard_insert", dto);
	}

	@Override
	public AdminBoardDto getView(String board_seq) {
		return sm.selectOne("AdminBoard_getView", board_seq);
	}

	@Override
	public int getTotal(AdminBoardDto dto) {
		return sm.selectOne("AdminBoard_getTotal", dto);
	}

	@Override
	public void delete(String board_seq) {
		sm.delete("AdminBoard_delete", board_seq);
	}

	@Override
	public void update(AdminBoardDto dto) {
		sm.update("AdminBoard_update", dto);
	}



}
