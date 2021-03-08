package systems.domains;

public class AdVO {

	private int ad_num; //광고 번호
	private String ad_name; //광고 이름
	private String ad_img; //광고 이미지
	private String ad_link; // 광고 링크
	private int totalclick; // 총 클릭 수
	private String startdate; // 광고 시작일
	private String enddate; //광고 마감일
	private String cat; // 반려묘 있는 사람의 클릭 수
	private String dog; // 반려견 있는 사람의 클릭 수
	
	public int getAd_num() {
		return ad_num;
	}
	public void setAd_num(int ad_num) {
		this.ad_num = ad_num;
	}
	public String getAd_name() {
		return ad_name;
	}
	public void setAd_name(String ad_name) {
		this.ad_name = ad_name;
	}
	public String getAd_img() {
		return ad_img;
	}
	public void setAd_img(String ad_img) {
		this.ad_img = ad_img;
	}
	public String getAd_link() {
		return ad_link;
	}
	public void setAd_link(String ad_link) {
		this.ad_link = ad_link;
	}
	public int getTotalclick() {
		return totalclick;
	}
	public void setTotalclick(int totalclick) {
		this.totalclick = totalclick;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	public String getDog() {
		return dog;
	}
	public void setDog(String dog) {
		this.dog = dog;
	}
	
	
	
}
