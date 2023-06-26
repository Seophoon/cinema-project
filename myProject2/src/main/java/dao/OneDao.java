package dao;

import java.util.List;

import model.OneBBS;

public interface OneDao {
	OneBBS getDetail(Integer seqno);//글번호로 공지글 검색
	List<OneBBS> fineMovie();
	void putOneBBS(OneBBS onebbs);
	Integer maxOne();//가장 큰 공지글 번호 검색
	List<OneBBS> getAllOne(Integer pageNo);//페이지 번호로 해당페이지의 출력할 한줄평 검색
	Integer getOneCount();//공지글의 갯수 검색 
	void deleteOne(Integer seqno);//글번호로 공지글 삭제
	void updateOne(OneBBS onebbs);//공지글 변경
}
