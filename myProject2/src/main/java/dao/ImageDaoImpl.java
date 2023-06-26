package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.FromTo;
import model.ImageBBS;

@Repository
public class ImageDaoImpl implements ImageDao {
	@Autowired
	private SqlSession session;
	
	private static final String MAPPER = "mapper.imageMapper";
	
	
	public Integer getMaxId() {
		Integer max = this.session.selectOne(this.MAPPER+".getMaxImageBBS");
		if(max == null) max = 0;
		return max;
	}

	public void create(ImageBBS bbs) {
		this.session.insert(this.MAPPER+".putImageBBS", bbs);
	}

	public void updateOrderNo(ImageBBS bbs) {
		this.session.update(this.MAPPER+".updateOrderNo", bbs);
	}

	public Integer getImageCount() {
		return this.session.selectOne(this.MAPPER+".getImageCount");
	}

	public List<ImageBBS> getImages(FromTo ft) {
		return this.session.selectList(this.MAPPER+".getImages",ft);
	}

	public ImageBBS getImageDetail(Integer id) {
		return this.session.selectOne(this.MAPPER+".getImageDetail", id);
	}

	public void deleteImageBBS(Integer id) {
		this.session.delete(this.MAPPER+".deleteImageBBS", id);
	}

	public void updateImageBBS(ImageBBS bbs) {
		this.session.update(this.MAPPER+".updateImageBBS", bbs);
	}

	public List<ImageBBS> findMovie() {
		List<ImageBBS> list = session.selectList(this.MAPPER+".findMovie");
		return list;
	}
	public void putOneBBS(ImageBBS bbs) {
		this.session.insert(this.MAPPER+".putOneBBS", bbs);
	}
	

}
