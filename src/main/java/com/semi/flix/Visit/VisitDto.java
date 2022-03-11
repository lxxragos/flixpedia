package com.semi.flix.Visit;

public class VisitDto {
	
	private String wdate = "";
	private int visit_count = 0;
	
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public int getVisit_count() {
		return visit_count;
	}
	public void setVisit_count(int visit_count) {
		this.visit_count = visit_count;
	}
	public VisitDto(String wdate, int visit_count) {
		super();
		this.wdate = wdate;
		this.visit_count = visit_count;
	}
	public VisitDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "VisitDto [wdate=" + wdate + ", visit_count=" + visit_count + "]";
	}
	
}
