package project.simsim.systems.domains;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	
	private int memnum; /* 회원번호 */
	private String id; /* 아이디 */
	private String pass; /* 비밀번호 */
	private String name; /* 이름 */
	private String birth; /* 생일 */
	private String gender; /* 성별 */
	private String email; /* 이메일 */
	private String pic; /* 프로필사진 */
	private String joindate; /* 가입일 */
	private String state; /* 상태 */
	private String outdate; /* 탈퇴일 */
	private int auth; /* 권한 */
	private String bookmark; /* 북마크 */
	
	private long picSize; /* 프로필사진용량 */
	
	
	//*************************************************
	MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyMMddhhmmss");
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			this.pic = format.format(now)+ file.getOriginalFilename();
			this.picSize = file.getSize();
			
			//***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\Kosmo_22\\git\\Team1\\Project\\src\\main\\webapp\\resources\\upload\\"+pic);
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	public int getMemnum() {
		return memnum;
	}
	public void setMemnum(int memnum) {
		this.memnum = memnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {		
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getOutdate() {
		return outdate;
	}
	public void setOutdate(String outdate) {
		this.outdate = outdate;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	public String getBookmark() {
		return bookmark;
	}
	public void setBookmark(String bookmark) {
		this.bookmark = bookmark;
	}
	public long getPicSize() {
		return picSize;
	}
	public void setPicSize(long picSize) {
		this.picSize = picSize;
	}
	
	
	
	
	

	

}
