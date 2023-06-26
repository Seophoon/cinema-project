package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.JariDao;
import model.Jari;

@Controller
public class MyController {

	@Autowired
	private JariDao jariDao;
	
	@RequestMapping(value="/my/my.html")
	public ModelAndView my(HttpSession session) {
		ModelAndView mav = new ModelAndView("home/main");
		String id = (String)session.getAttribute("USER");
		List<Jari> myJariList = this.jariDao.myYeyak(id);//글번호로 공지글 조회;
		mav.addObject("MYJARI", myJariList);
		mav.addObject("BODY", "my.jsp");
		return mav;
	}
}
