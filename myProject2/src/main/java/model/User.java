package model;

import org.hibernate.validator.constraints.NotEmpty;

public class User {
	@NotEmpty(message="계정을 입력하세요.")
	private String id;
	@NotEmpty(message="암호를 입력하세요.")
	private String pwd;
	@NotEmpty(message="이름를 입력하세요.")
	private String name;
	@NotEmpty(message="주소를 입력하세요.")
	private String addr;
	@NotEmpty(message="이메일를 입력하세요.")
	private String email;
	@NotEmpty(message="연락처를 입력하세요.")
	private String phone;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
