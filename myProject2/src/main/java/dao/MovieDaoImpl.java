package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.FromTo;
import model.Movie;

@Repository
public class MovieDaoImpl implements MovieDao {
	private static final String MAPPER = "mapper.myMapper";
	
	@Autowired
	private SqlSession session;
	
	public List<Movie> findAll() {
		List<Movie> list = session.selectList("mapper.myMapper.getMovieList");
		return list;
	}

	public void create(Movie bbs) {
		// TODO Auto-generated method stub
		
	}

	public void updateOrderNo(Movie bbs) {
		// TODO Auto-generated method stub
		
	}

	public void deleteImageBBS(Integer id) {
		// TODO Auto-generated method stub
		
	}

	public void updateImageBBS(Movie bbs) {
		// TODO Auto-generated method stub
		
	}

	public Integer getMaxId() {
		// TODO Auto-generated method stub
		return null;
	}

	public Integer getImageCount() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Movie> getImages(FromTo ft) {
		// TODO Auto-generated method stub
		return null;
	}

	public Movie getImageDetail(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
