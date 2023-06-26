package model;

import org.hibernate.validator.constraints.NotEmpty;

public class Customer {
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getAddr() {
		return addr;
	}
	public String getPhone() {
		return phone;
	}
	public String getPwd() {
		return pwd;
	}
	public String getEmail() {
		return email;
	}
	public String getReg_date() {
		return reg_date;
	}
	@NotEmpty(message="계정을 입력하세요.")
	private String id;
	private String name;
	private String addr;
	private String phone;
	@NotEmpty(message="암호를 입력하세요.")
	private String pwd;
	private String email;
	private String reg_date;
	public void setId(String id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
}
