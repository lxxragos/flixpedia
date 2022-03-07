package com.semi.flix.admin.member;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("adminmemberDao")
public class AdminMemberDaoImpl implements AdminMemberDao{
	
	@Autowired
	SqlSessionTemplate sm;

	@Override
	public boolean isDuplicate(AdminMemberDto dto) {
		int cnt = sm.selectOne("AdminMember_isDuplicate", dto);
		if(cnt==0)
			return false;	//중복이 아니기때문에 사용 가능하다는뜻 , 사용가능아이디
		else
			return true;	//이미 사용중
	}

	@Override
	public void insert(AdminMemberDto dto) {
		sm.insert("AdminMember_insert", dto);
	}

	@Override
	public AdminMemberDto getInfo(AdminMemberDto dto) {
		return sm.selectOne("AdminMember_getInfo", dto);
	}

	@Override
	public AdminMemberDto findId(AdminMemberDto dto) {
		return sm.selectOne("AdminMember_findId", dto);
	}

	@Override
	public AdminMemberDto findPassword(AdminMemberDto dto) {
		return sm.selectOne("AdminMember_findPassword", dto);
	}

	@Override
	public void update(AdminMemberDto dto) {
		sm.update("AdminMember_updateInfo", dto);
	}

}
