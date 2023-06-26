package model;

import org.hibernate.validator.constraints.NotEmpty;

public class OneBBS {
	private Integer seqno;
	private String moviename;
	@NotEmpty(message="내용을 입력하세요.")
	private String content;
	private String id;
	private String one_date;
	
	public Integer getSeqno() {
		return seqno;
	}
	public void setSeqno(Integer seqno) {
		this.seqno = seqno;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOne_date() {
		return one_date;
	}
	public void setOne_date(String one_date) {
		this.one_date = one_date;
	}
}
