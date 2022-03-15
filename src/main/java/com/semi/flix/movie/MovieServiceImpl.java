package com.semi.flix.movie;





import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.semi.flix.comment.CommentDao;
import com.semi.flix.comment.CommentDto;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
	 
	@Resource(name="movieDao")
	MovieDao movieDao;
	@Resource(name="commentDao")
	CommentDao commentDao;
	@Override
	public List<MovieDto> getList(MovieDto dto) {
		// TODO Auto-generated method stub
		return movieDao.getList(dto);
	}

	@Override
	public int getTotal(MovieDto dto) {
		// TODO Auto-generated method stub
		return movieDao.getTotal(dto);
	}

	@Override
	public MovieDto getView(MovieDto dto) {
		// TODO Auto-generated method stub
		return movieDao.getView(dto);
	}
	
	
	//----�뿬湲곕��꽣�?��湲�----
	@Override
	public void commentinsert(CommentDto dto) {
		commentDao.commentinsert(dto);
		
	}

	

	@Override
	public int commentTotal(CommentDto dto) {
		return commentDao.commentTotal(dto);
		
	}

	@Override
	public List<CommentDto> commentList(CommentDto dto) {
		// TODO Auto-generated method stub
		return commentDao.commentList(dto);
	}
	
	
}
