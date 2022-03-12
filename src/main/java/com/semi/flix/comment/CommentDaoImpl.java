package com.semi.flix.comment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commentDao")
public class CommentDaoImpl implements CommentDao{

	@Autowired 
	SqlSessionTemplate sm;
	
	

	@Override
	public void commentinsert(CommentDto dto) {
		sm.insert("commentinsert",dto);
		
	}



	





	@Override
	public List<CommentDto> commentList(CommentDto dto) {
		// TODO Auto-generated method stub
		return sm.selectList("Comment_getList",dto);
	}




	
	
	@Override
	public int commentTotal(CommentDto dto) {
		return sm.selectOne("Comment_count",dto);
	}
		

	

}




