package fdp.project.spring.model;

import lombok.Data;

@Data
public class Member {
	private int fdpmember_id;
	private String name;
	private String user_id;
	private String user_pw;
	private String email;
	private int gender;
	private String tel;
	private String addr1;
	private String addr2;
	private String addr3;
	private String addr4;
	private String reg_date;
	private String edit_date;
	private String medical_field;
	private String member_grade;
}
