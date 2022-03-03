package com.semi.flix.drama;

import com.semi.flix.common.BaseDto;

public class DramaDto extends BaseDto {

	private String board_seq="";
	private String group_name="";
	private String genre_code="";
	private String drama_title="";
	private String drama_author="";
	private String drama_content="";
	private String drama_images="";
	private int drama_hit=0;
	
	public String getBoard_seq() {
		return board_seq;
	}
	public void setBoard_seq(String board_seq) {
		this.board_seq = board_seq;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
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
	public String getDrama_author() {
		return drama_author;
	}
	public void setDrama_author(String drama_author) {
		this.drama_author = drama_author;
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
	public int getDrama_hit() {
		return drama_hit;
	}
	public void setDrama_hit(int drama_hit) {
		this.drama_hit = drama_hit;
	}
	
	
	
	
	
		
	
	
}
