package systems.domains;


public class MemberVO {
	
	private String mem_num; //회원번호
	private int mem_check; //권한 체크 (0이면 일반회원, 1이면 관리자)
	
	private String mem_email; //이메일 (아이디)
	private String mem_name; //이름
	private String mem_pass; // 비밀번호
	private String mem_tel; //전화번호
	
	private String bookmark; //북마크
	
	
	public String getBookmark() {
		return bookmark;
	}
	public void setBookmark(String bookmark) {
		this.bookmark = bookmark;
	}
	public String getMem_num() {
		return mem_num;
	}
	public void setMem_num(String mem_num) {
		this.mem_num = mem_num;
	}
	public int getMem_check() {
		return mem_check;
	}
	public void setMem_check(int mem_check) {
		this.mem_check = mem_check;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_pass() {
		return mem_pass;
	}
	public void setMem_pass(String mem_pass) {
		this.mem_pass = mem_pass;
	}
	public String getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	



}
