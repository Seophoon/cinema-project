package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.FromTo;
import model.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao {
private static final String MAPPER = "mapper.myMapper";
	
	@Autowired
	private SqlSession session;
	
	public Integer getMaxNoticeNo() {
		Integer max = this.session.selectOne(this.MAPPER+".maxNotice");
		if(max == null) max = 0;
		return max;
	}

	public void putNotice(Notice notice) {
		this.session.insert(this.MAPPER+".putNotice", notice);
	}

	public Integer getNoticeCount() {
		return this.session.selectOne(this.MAPPER+".getNoticeCount");
	}

	public List<Notice> getAllNotices(Integer pageNo) {
		if(pageNo == null) pageNo= 1;
		int from = (pageNo - 1) * 5;
		int to = ((pageNo - 1) * 5) + 6;
		FromTo ft = new FromTo();
		ft.setFrom(from);
		ft.setTo(to);
		List<Notice> noticeList = this.session.selectList(this.MAPPER+".getAllNotice",ft);
		return noticeList;
	}

	public Notice getDetail(Integer no) {
		return this.session.selectOne(this.MAPPER+".getNoticeDetail", no);
	}

	public void deleteNotice(Integer no) {
		this.session.delete(this.MAPPER+".deleteNotice", no);
	}

	public void updateNotice(Notice notice) {
		this.session.update(this.MAPPER+".updateNotice", notice);
		
	}

}
