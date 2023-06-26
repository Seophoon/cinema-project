package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value="/home/main.html")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView("home/main");
		mav.addObject("BODY", "intro.jsp");
		return mav;
	}
}
