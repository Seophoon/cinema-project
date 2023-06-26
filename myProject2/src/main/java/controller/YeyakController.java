package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.JariDao;
import model.Jari;

@Controller
public class YeyakController {
	
	@Autowired
	private JariDao jariDao;
	
	@RequestMapping(value="/yeyak/yeyakdo.html")
	public ModelAndView yeyakDo(HttpSession session, Jari jari, HttpServletRequest request) {
		String[] arrJari = request.getParameterValues("seat");
		String moviename = jari.getMoviename();
		for(int i=0; i<arrJari.length; i++) {
			String id = (String)session.getAttribute("USER");
			jari.setJari(arrJari[i]);
			jari.setId(id);
			jari.setMoviename(moviename);
			this.jariDao.insertJari(jari);
		}
		return new ModelAndView("redirect:/my/my.html");
	}
	
	@RequestMapping(value="/yeyak/yeyakListCheck.html")
	public ModelAndView yeyak(Jari jari) {
		ModelAndView mav = new ModelAndView("home/main");
		List<Jari> yeyak = this.jariDao.getJariList(jari.getMoviename());
		String moviename = jari.getMoviename();
		mav.addObject(new Jari());
		mav.addObject("yeyak", yeyak);
		mav.addObject("moviename", moviename);
		mav.addObject("BODY", "yeyakmolla.jsp");
		return mav;
	}
}

