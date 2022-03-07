package com.semi.flix.drama;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("dramaService")
public class DramaServiceImpl implements DramaService {
	
	@Resource(name="dramaDao")
	DramaDao dramaDao;

	@Override
	public List<DramaDto> getList(DramaDto dto) {
		// TODO Auto-generated method stub
		return dramaDao.getList(dto);
	}

	@Override
	public int getTotal(DramaDto dto) {
		// TODO Auto-generated method stub
		return dramaDao.getTotal(dto);
	}

	@Override
	public DramaDto getView(DramaDto dto) {
		// TODO Auto-generated method stub
		return dramaDao.getView(dto);
	}

	@Override
	public DramaDto getDrama_Rank(DramaDto dto) {
		return dramaDao.getDrama_Rank(dto);
	}
	
	
}
