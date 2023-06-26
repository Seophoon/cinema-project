package dao;

import java.util.List;

import model.FromTo;
import model.ImageBBS;

public interface ImageDao {
	void create(ImageBBS bbs);//이미지 게시글 삽입
	void deleteImageBBS(Integer seqno);//글번호로 게시글 삭제
	void updateImageBBS(ImageBBS bbs);//이미지게시글 수정
	Integer getMaxId();//가장 큰 글번호 검색
	Integer getImageCount();//게시글의 갯수 검색
	List<ImageBBS> getImages(FromTo ft);//이미지 게시글 검색
	ImageBBS getImageDetail(Integer seqno);//글번호로 게시글 검색
	List<ImageBBS> findMovie();
	void putOneBBS(ImageBBS bbs);
}
