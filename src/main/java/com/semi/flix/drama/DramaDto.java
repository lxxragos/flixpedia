package com.semi.flix.drama;

import com.semi.flix.common.BaseDto;

public class DramaDto extends BaseDto {

	private String board_seq="";
	private String genre_code="";
	private String drama_title="";
	private String wdate="";
	private String drama_producer="";
	private String drama_content="";
	private String drama_images="";
	private int drama_hit=0;
	private String drama_youtube="";	// 220303�߰�
	private int drama_avg_ratings=0;
	private String drama_productionyear = "";
	private String drama_agelimit ="";
	private String category_code="";
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
	public String getGenre_code() {
		return genre_code;
	}
	public void setGenre_code(String genre_code) {
		this.genre_code = genre_code;
	}
	public String getDrama_title() {
		return drama_title;
	}
	public void setDrama_title(String drama_title) {
		this.drama_title = drama_title;
	}
	public String getDrama_producer() {
		return drama_producer;
	}
	public void setDrama_producer(String drama_producer) {
		this.drama_producer = drama_producer;
	}
	public String getDrama_content() {
		return drama_content;
	}
	public void setDrama_content(String drama_content) {
		this.drama_content = drama_content;
	}
	public String getDrama_images() {
		return drama_images;
	}
	public void setDrama_images(String drama_images) {
		this.drama_images = drama_images;
	}
	public String getCategory_code() {
		return category_code;
	}
	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}
	public String getDrama_author() {
		return drama_author;
	}
	public void setDrama_author(String drama_author) {
		this.drama_author = drama_author;
	}
	public String getDrama_hit() {
		return drama_hit;
	}
	public void setDrama_hit(String drama_hit) {
		this.drama_hit = drama_hit;
	}
	public String getDrama_youtube() {
		return drama_youtube;
	}
	public void setDrama_youtube(String drama_youtube) {
		this.drama_youtube = drama_youtube;
	}
	public int getDrama_avg_ratings() {
		return drama_avg_ratings;
	}
	public void setDrama_avg_ratings(int drama_avg_ratings) {
		this.drama_avg_ratings = drama_avg_ratings;
	}
	public String getDrama_productionyear() {
		return drama_productionyear;
	}
	public void setDrama_productionyear(String drama_productionyear) {
		this.drama_productionyear = drama_productionyear;
	}
	public String getDrama_agelimit() {
		return drama_agelimit;
	}
	public void setDrama_agelimit(String drama_agelimit) {
		this.drama_agelimit = drama_agelimit;
	}

	public String getDrama_url() {
		return drama_url;
	}
	public void setDrama_url(String drama_url) {
		this.drama_url = drama_url;
	}
	public String getStar_avg() {
		return star_avg;
	}
	public void setStar_avg(String star_avg) {
		this.star_avg = star_avg;
	}

	public DramaDto(String board_seq, String group_name, String genre_code, String drama_title, String drama_producer,
			String drama_content, String drama_images, int drama_hit, String drama_youtube, int drama_avg_ratings,
			String drama_productionyear, String drama_agelimit, String category_code) {
		super();
		this.board_seq = board_seq;
		this.group_name = group_name;
		this.genre_code = genre_code;
		this.drama_title = drama_title;
		this.drama_producer = drama_producer;
		this.drama_content = drama_content;
		this.drama_images = drama_images;
		this.drama_hit = drama_hit;
		this.drama_youtube = drama_youtube;
		this.drama_avg_ratings = drama_avg_ratings;
		this.drama_productionyear = drama_productionyear;
		this.drama_agelimit = drama_agelimit;
		this.category_code = category_code;
	}
	public DramaDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
