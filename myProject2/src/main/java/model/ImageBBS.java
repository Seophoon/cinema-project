package model;

import org.hibernate.validator.constraints.NotEmpty;

public class ImageBBS {
	private Integer seqno;
	@NotEmpty(message="제목을 입력하세요.")
	private String moviename;
	@NotEmpty(message="감독을 입력하세요.")
	private String derector;
	@NotEmpty(message="사진을 선택하세요")
	private String pictureUrl;
	@NotEmpty(message="개봉일 정하세요")
	private String movieDate;
	@NotEmpty(message="줄거리를 입력하세요.")
	private String description;
	private String id;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getDerector() {
		return derector;
	}
	public void setDerector(String derector) {
		this.derector = derector;
	}
	public String getPictureUrl() {
		return pictureUrl;
	}
	public void setPictureUrl(String pictureurl) {
		this.pictureUrl = pictureurl;
	}
	public String getMovieDate() {
		return movieDate;
	}
	public void setMovieDate(String movieDate) {
		this.movieDate = movieDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
