package com.semi.flix.admin.adminQ_A;

import java.util.List;

import javax.annotation.Resource;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semi.flix.admin.comment.CommentDto;
import com.semi.flix.admin.comment.CommentDao;

@Service("adminQ_AService")
public class AdminQ_AServiceImpl implements AdminQ_AService{
	
	//@Autowired
	@Resource(name="adminQ_ADao")
	AdminQ_ADao adminQ_ADao;
	
	@Override
	public List<AdminQ_ADto> getList(AdminQ_ADto dto) {
		return adminQ_ADao.getList(dto);
	}
	@Override
	public AdminQ_ADto getView(String seq) {

		return adminQ_ADao.getView(seq);
	}

	@Override
	public int getTotal(AdminQ_ADto dto) {
		return adminQ_ADao.getTotal(dto);
	}

	@Override
	public void delete(String seq) {
		adminQ_ADao.delete(seq);
		
	}

	@Resource(name="commentDao")
	CommentDao commentDao;
	
	@Override
	public CommentDto getCommentView(CommentDto dto) {
		return commentDao.comment_getView(dto);
	}
	
	@Override
	public void comment_delete(CommentDto dto) {
		commentDao.comment_delete(dto);
		
	}
	@Override
	public void comment_insert(CommentDto dto) {
		commentDao.insert(dto);
		
	}
	@Override
	public List<CommentDto> getCommentList(CommentDto dto) {
		return commentDao.getList(dto);
	}

}
