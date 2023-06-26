package model;

import org.hibernate.validator.constraints.NotEmpty;

public class Jari {
	private String moviename;
	private String id;
	private String yeyak_date;
	@NotEmpty(message="자리를 선택하세요.")
	private String jari;
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getYeyak_date() {
		return yeyak_date;
	}
	public void setYeyak_date(String yeyak_date) {
		this.yeyak_date = yeyak_date;
	}
	public String getJari() {
		return jari;
	}
	public void setJari(String jari) {
		this.jari = jari;
	}
	
	//영화제목(F), 이름(F), 날짜, 좌석
}
