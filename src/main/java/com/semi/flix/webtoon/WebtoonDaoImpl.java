package com.semi.flix.webtoon;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("webtoonDao")
public class WebtoonDaoImpl implements WebtoonDao {
	
	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public List<WebtoonDto> getList(WebtoonDto dto) {
		//return sm.selectList("Webtoon_getList", dto);
		return null;
	}

	@Override
	public int getTotal(WebtoonDto dto) {
		//return sm.selectOne("Webtoon_getTotal",dto);
		return 0;
	}

	@Override
	public WebtoonDto getView(WebtoonDto dto) {
		// TODO Auto-generated method stub
		//return sm.selectOne("Webtoon_getView",dto);
		return null;
	}

	

}
