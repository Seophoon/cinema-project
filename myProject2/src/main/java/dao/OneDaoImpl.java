package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.FromTo;
import model.Notice;
import model.OneBBS;

@Repository
public class OneDaoImpl implements OneDao {
private static final String MAPPER = "mapper.oneMapper";
	
	@Autowired
	private SqlSession session;

	public List<OneBBS> fineMovie() {
		List<OneBBS> list = session.selectList(this.MAPPER+".findMovie");
		return list;
	}

	public void putOneBBS(OneBBS oneBBS) {
		this.session.insert(this.MAPPER+".putOneBBS", oneBBS);
	}
	public Integer maxOne() {
		Integer maxx = session.selectOne(this.MAPPER+".maxOne");
		if(maxx == null) maxx = 0;
		System.out.println("max: " + maxx);
		return maxx;
	}

	public List<OneBBS> getAllOne(Integer pageNo) {
		if(pageNo == null) pageNo= 1;
		int from = (pageNo - 1) * 5;
		int to = ((pageNo - 1) * 5) + 6;
		FromTo ft = new FromTo();
		ft.setFrom(from);
		ft.setTo(to);
		List<OneBBS> oneList = this.session.selectList(this.MAPPER+".getAllOne",ft);
		return oneList;
	}

	public Integer getOneCount() {
		return this.session.selectOne(this.MAPPER+".getOneCount");
	}

	public OneBBS getDetail(Integer seqno) {
		return this.session.selectOne(this.MAPPER+".getOneDetail", seqno);
	}

	public void deleteOne(Integer seqno) {
		this.session.delete(this.MAPPER+".deleteOne", seqno);
		
	}

	public void updateOne(OneBBS oneBBS) {
		this.session.update(this.MAPPER+".updateOne", oneBBS);
	}
	
}
