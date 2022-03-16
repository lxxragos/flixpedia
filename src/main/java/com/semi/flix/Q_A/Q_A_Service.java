package com.semi.flix.Q_A;

import java.util.List;

public interface Q_A_Service {
	// CRUD 기능의 메소드
		// 글 등록
		void insertQ_A(Q_A_DTO dto);

		// 글 수정
		void updateQ_A(Q_A_DTO dto);

		// 글 삭제
		void deleteQ_A(Q_A_DTO dto);

		// 글 상세 조회
		Q_A_DTO getQ_A(Q_A_DTO dto);

		// 글 목록 조회
		List<Q_A_DTO> getQ_A_List(Q_A_DTO dto);

	}
	


