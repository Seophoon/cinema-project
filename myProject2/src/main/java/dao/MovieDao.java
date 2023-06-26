package dao;

import java.util.List;

import model.FromTo;
import model.Movie;

public interface MovieDao {
	void create(Movie bbs);//이미지 게시글 삽입
	void updateOrderNo(Movie bbs);//답글 순서 변경
	void deleteImageBBS(Integer id);//글번호로 게시글 삭제
	void updateImageBBS(Movie bbs);//이미지게시글 수정
	Integer getMaxId();//가장 큰 글번호 검색
	Integer getImageCount();//게시글의 갯수 검색
	List<Movie> getImages(FromTo ft);//이미지 게시글 검색
	Movie getImageDetail(Integer id);//글번호로 게시글 검색
}
