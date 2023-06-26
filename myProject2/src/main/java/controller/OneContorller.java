package controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.ImageDao;
import dao.OneDao;
import model.ImageBBS;
import model.OneBBS;

@Controller
public class OneContorller {

	@Autowired
	private OneDao oneDao;
	@Autowired
	private ImageDao imageDao;
	
	@RequestMapping(value="/one/oneModify.html")
	public ModelAndView modify(@Valid OneBBS oneBBS, BindingResult br, String BTN) {
		ModelAndView mav = new ModelAndView("home/main");
		if(br.hasErrors()) {
			mav.addObject("BODY", "oneDetail.jsp");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		if(BTN.equals("삭제")) {
			this.oneDao.deleteOne(oneBBS.getSeqno());
		}else if(BTN.equals("수정")) {
			this.oneDao.updateOne(oneBBS);
		}
		mav.addObject("BODY", "oneModifyResult.jsp?R=OK");
		return mav;
	}
	
	
	@RequestMapping(value="/one/oneDetail.html")
	public ModelAndView detail(Integer seqno, HttpSession session) {
		OneBBS myYeyak = this.oneDao.getDetail(seqno);//글번호로 공지글 조회
		ModelAndView mav = new ModelAndView("home/main");
		mav.addObject(myYeyak);
		String id = (String)session.getAttribute("USER");
		if(id == null || ! id.equals(myYeyak.getId())) {//유저가 아니거나 자기글이 아닌 경우
//			mav.addObject("BODY", "redirect:/one/oneList.html");
			return new ModelAndView("redirect:/one/oneList.html");
		}else {
			mav.addObject("BODY", "oneDetail.jsp");
		}
		return mav;
	}
	
	@RequestMapping(value="/one/oneInputDo.html")
	public ModelAndView oneInputDo(@Valid OneBBS oneBBS, BindingResult br, HttpSession session) {
		ModelAndView mav = new ModelAndView("home/main");
		if(br.hasErrors()) {
			List<ImageBBS> movieName = this.imageDao.findMovie();
			mav.addObject(new OneBBS());
			mav.addObject("Movie", movieName);
			mav.addObject("BODY", "oneInputForm.jsp");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		String id = (String)session.getAttribute("USER");
		int seqno = this.oneDao.maxOne() +1;
		oneBBS.setSeqno(seqno);
		oneBBS.setId(id);
		this.oneDao.putOneBBS(oneBBS);//한줄평 DB에 삽입
		return new ModelAndView("redirect:/one/oneList.html");
	}
	
	
	@RequestMapping(value="/one/oneInputForm.html")
	public ModelAndView ondInput() {
		ModelAndView mav = new ModelAndView("home/main");
		List<ImageBBS> movieName = this.imageDao.findMovie();
		mav.addObject(new OneBBS());
		mav.addObject("Movie", movieName);
		mav.addObject("BODY", "oneInputForm.jsp");
		return mav;
	}
	
	@RequestMapping(value="/one/oneList.html")
	public ModelAndView oneform(Integer PAGE_NO) {
		List<OneBBS> oneList = this.oneDao.getAllOne(PAGE_NO);
		if(PAGE_NO == null) PAGE_NO = 1;
		int currentPage = PAGE_NO;//현재페이지
		Integer totalCount = this.oneDao.getOneCount();//전체 공지글의 갯수 검색
		int pageCount = totalCount / 5;
		if(totalCount % 5 > 0) pageCount++;
		int startRow = 0;
		int endRow = 0;
		startRow = (currentPage - 1)  * 5 + 1;
		endRow = currentPage * 5;
		if(endRow > totalCount) endRow = totalCount;
		ModelAndView mav = new ModelAndView("home/main");
		mav.addObject("STARTROW", startRow);
		mav.addObject("ENDROW", endRow);
		mav.addObject("TOTAL", totalCount);
		mav.addObject("COUNT", pageCount);//페이지 갯수 설정
		mav.addObject("ONES", oneList);//검색된 공지글 목록 설정
		mav.addObject("BODY", "oneList.jsp");
		return mav;
		
	}
}
