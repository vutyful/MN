package systems.domains;

public class ContentVO {
	private String con_num; // 정보 아이디
	private String con_title; //제목
	private String con_cate; // 카테고리
	private String con_date; //날짜
	private String con_content; //정보 글
	private String con_img; // 썸네일 이미지
	private String con_head; // 머릿말(간략 글)
	private String con_state; // 정보글 상태 (y/n)
	private int viewcount;
	
	
	public int getViewcount() {
		return viewcount;
	}
	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}
	public String getCon_num() {
		return con_num;
	}
	public void setCon_num(String con_num) {
		this.con_num = con_num;
	}
	public String getCon_title() {
		return con_title;
	}
	public void setCon_title(String con_title) {
		this.con_title = con_title;
	}
	public String getCon_cate() {
		return con_cate;
	}
	public void setCon_cate(String con_cate) {
		this.con_cate = con_cate;
	}
	public String getCon_date() {
		return con_date;
	}
	public void setCon_date(String con_date) {
		this.con_date = con_date;
	}
	public String getCon_content() {
		return con_content;
	}
	public void setCon_content(String con_content) {
		this.con_content = con_content;
	}
	public String getCon_img() {
		return con_img;
	}
	public void setCon_img(String con_img) {
		this.con_img = con_img;
	}
	public String getCon_head() {
		return con_head;
	}
	public void setCon_head(String con_head) {
		this.con_head = con_head;
	}
	public String getCon_state() {
		return con_state;
	}
	public void setCon_state(String con_state) {
		this.con_state = con_state;
	}
	

	
	
}
