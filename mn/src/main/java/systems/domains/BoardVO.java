package systems.domains;

public class BoardVO {
	private  int bo_id;
    private String bo_title;
    private String bo_cate;
    private String bo_content;
    private String bo_img;
    private int mem_id;
	
    public int getBo_id() {
		return bo_id;
	}
	public void setBo_id(int bo_id) {
		this.bo_id = bo_id;
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
	public String getBo_content() {
		return bo_content;
	}
	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}
	public String getBo_img() {
		return bo_img;
	}
	public void setBo_img(String bo_img) {
		this.bo_img = bo_img;
	}
	public int getMem_id() {
		return mem_id;
	}
	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}
}
