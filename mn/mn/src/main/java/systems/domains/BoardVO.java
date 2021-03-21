package systems.domains;

public class BoardVO {
	private  int bo_num; //게시글 번호
    private String bo_title; //게시글 제목
    private String bo_cate; //게시글 카테고리 (고양이/강아지)
    private String bo_date; // 게시글 작성일자
    private String bo_content; //내용
    private String bo_state; //상태 (y/n)
    private int mem_num; // 회원번호 (외래키)
    
    
	public int getBo_num() {
		return bo_num;
	}
	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}
	public String getBo_title() {
		return bo_title;
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
	public String getBo_state() {
		return bo_state;
	}
	public void setBo_state(String bo_state) {
		this.bo_state = bo_state;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	
    


}
