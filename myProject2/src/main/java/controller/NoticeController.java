package controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.NoticeDao;
import model.Notice;

@Controller
public class NoticeController {
	@Autowired
	private NoticeDao noticeDao;
	
	@RequestMapping(value="/notice/noticeModify.html")
	public ModelAndView modify(@Valid Notice notice, BindingResult br, String BTN) {
		ModelAndView mav = new ModelAndView("home/main");
		if(br.hasErrors()) {
			mav.addObject("BODY", "noticeReadAdmin.jsp");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		if(BTN.equals("삭제")) {
			this.noticeDao.deleteNotice(notice.getNo());
		}else if(BTN.equals("수정")) {
			this.noticeDao.updateNotice(notice);
		}
		mav.addObject("BODY", "noticeModifyResult.jsp?R=OK");
		return mav;
	}
	
	@RequestMapping(value="/notice/noticeDetail.html")
	public ModelAndView detail(Integer NO, HttpSession session) {
		Notice notice = this.noticeDao.getDetail(NO);//글번호로 공지글 조회
		ModelAndView mav = new ModelAndView("home/main");
		mav.addObject(notice);
		String id = (String)session.getAttribute("ADMIN");
		if(id == null || ! id.equals(notice.getId())) {//로그인을 안하거나 작성자가 다른 경우
			mav.addObject("BODY", "noticeRead.jsp");
		}else {
			mav.addObject("BODY", "noticeReadAdmin.jsp");
		}
		return mav;
	}
	
	@RequestMapping(value="/notice/write.html")
	public ModelAndView write(@Valid Notice notice, BindingResult br, HttpSession session) {
		ModelAndView mav = new ModelAndView("home/main");
		if(br.hasErrors()) {
			mav.addObject("BODY", "noticeInput.jsp");
			mav.getModel().putAll(br.getModel());
			return mav;
		}
		int no = this.noticeDao.getMaxNoticeNo() +1;
		String id = (String)session.getAttribute("ADMIN");
		notice.setNo(no);
		notice.setId(id);
		this.noticeDao.putNotice(notice);//공지글 DB에 삽입
		return new ModelAndView("redirect:/notice/noticeList.html");
	}
	
	@RequestMapping(value="/notice/noticeList.html")
	public ModelAndView noticeList(Integer PAGE_NO) {
		List<Notice> noticeList = this.noticeDao.getAllNotices(PAGE_NO);
		if(PAGE_NO == null) PAGE_NO = 1;
		int currentPage = PAGE_NO;//현재페이지
		Integer totalCount = this.noticeDao.getNoticeCount();//전체 공지글의 갯수 검색
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
		mav.addObject("NOTICES", noticeList);//검색된 공지글 목록 설정
		mav.addObject("BODY", "noticeList.jsp");
		return mav;
	}
	
	@RequestMapping(value="/notice/noticeInput.html")
	public ModelAndView noticeInput() {
		ModelAndView mav = new ModelAndView("home/main");
		mav.addObject(new Notice());
		mav.addObject("BODY", "noticeInput.jsp");
		return mav;
	}
}
