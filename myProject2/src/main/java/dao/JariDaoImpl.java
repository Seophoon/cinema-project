package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Jari;

@Repository
public class JariDaoImpl implements JariDao {
@Autowired
private SqlSession session;

	private static final String MAPPER = "mapper.jariMapper";

	public List<Jari> getJariList(String moviename) {
		List<Jari> list = session.selectList("mapper.jariMapper.getJariList" , moviename);
		return list;
	}
	public void insertJari(Jari jari) {
		this.session.insert(this.MAPPER+".insertJari", jari);
	}
	public List<Jari> myYeyak(String id) {
		List<Jari> list = session.selectList("mapper.jariMapper.myYeyak" , id);
		return list;
	}

}
