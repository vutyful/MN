package systems.domains;

public class RegistVO {
	
	private String mem_id;   // mem_id는 이메일 형식으로 설정
	private String mem_check;
	private String mem_name;
	private String mem_pass;
	private String mem_tel;

	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_check() {
		return mem_check;
	}
	public void setMem_check(String mem_check) {
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

}
