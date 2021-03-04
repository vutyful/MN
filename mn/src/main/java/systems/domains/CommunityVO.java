package systems.domains;

import java.sql.Date;

public class CommunityVO{
	private int bo_num;		//게시판 번호
	private String bo_title;//게시판 제목
	private String bo_cate;	//게시판 카테고리
	private String bo_date;// 작성날짜
	private String bo_content; // 내용
	private String mem_id;// 회원번호 이메일로 관리
	//
	

	public String getBo_title() {
		return bo_title;
	}
	public int getBo_num() {
		return bo_num;
	}
	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}
	public void setBo_title(String bo_title) {
		this.bo_title = bo_title;
	}
	public String getBo_cate() {
		return bo_cate;
	}
	public void setBo_cate(String bo_cate) {
		this.bo_cate = bo_cate;
	}
	public String getBo_date() {
		return bo_date;
	}
	public void setBo_date(String bo_date) {
		this.bo_date = bo_date;
	}

	public String getBo_content() {
		return bo_content;
	}
	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
	
}