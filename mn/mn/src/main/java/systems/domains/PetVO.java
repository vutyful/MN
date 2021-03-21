package systems.domains;

import java.io.File;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class PetVO {

	private int pet_num; // 반려동물 번호
	private String pet_name; // 반려동물 이름
	private String pet_img; // 반려동물 사진
	private String pet_check; // 반려동물 등록여부
	private String pet_dogcat; // 강아지 고양이 2개만
	private String pet_kind; // 품종
	private String pet_birth; // 반려동물 생년   int형이엇는데 string으로 바꿧음.
	private int mem_num; // 회원번호.

	MultipartFile file; // write.jsp에 파일첨부시 name="file"과 동일한 변수명

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;

		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.pet_img = file.getOriginalFilename();  //pet_img로 지정한  이름으로 파일명이 저장됨.

			// ***********************************************
			// 해당 경로로 변경 // 이경로에 이미지파일이 저장됨.
			File f = new File("C:\\Users\\psy\\git\\MN\\mn\\src\\main\\webapp\\resources\\petimg\\" + pet_img);

			try {
				file.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

	public int getPet_num() {
		return pet_num;
	}

	public void setPet_num(int pet_num) {
		this.pet_num = pet_num;
	}

	public String getPet_name() {
		return pet_name;
	}

	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}

	public String getPet_img() {
		return pet_img;
	}

	public void setPet_img(String pet_img) {
		this.pet_img = pet_img;
	}

	public String getPet_check() {
		return pet_check;
	}

	public void setPet_check(String pet_check) {
		this.pet_check = pet_check;
	}

	public String getPet_dogcat() {
		return pet_dogcat;
	}

	public void setPet_dogcat(String pet_dogcat) {
		this.pet_dogcat = pet_dogcat;
	}

	public String getPet_kind() {
		return pet_kind;
	}

	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}

	public String getPet_birth() {
		return pet_birth;
	}

	public void setPet_birth(String pet_birth) {
		this.pet_birth = pet_birth;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

}
