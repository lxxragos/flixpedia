package com.semi.flix.Visit;

public interface VisitDao {
	void insert(VisitDto dto);
	int getTotal(VisitDto dto);
	void update (VisitDto dto);
}
