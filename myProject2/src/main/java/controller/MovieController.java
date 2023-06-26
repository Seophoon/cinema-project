package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.MovieDao;
import model.FromTo;
import model.Movie;

@Controller
public class MovieController {
	@Autowired
	private MovieDao movieDao;
	
	
	@RequestMapping(value="/movie/movieList.html")
	public ModelAndView moviewrite() {
		ModelAndView mav = new ModelAndView("home/main");
		mav.addObject(new Movie());
		mav.addObject("BODY", "movieList.jsp");
		return mav;
	}
	
	@RequestMapping(value="/write/movieDetail.html")
	public ModelAndView imageList(Integer PAGE_NUM) {
		if(PAGE_NUM == null) PAGE_NUM = 1;
		int currentPage = PAGE_NUM;//현재페이지
		int count = this.movieDao.getImageCount();//게시글의 갯수
		int totalPageCount = 0;
		int startRow = 0;
		int endRow = 0;
		if(count > 0) {//게시글이 존재하는 경우
			totalPageCount = count / 5;
			if(count % 5 >0) totalPageCount++;
			startRow = (currentPage - 1)  * 5 + 1;
			endRow = currentPage * 5;
			if(endRow > count) endRow = count;
		}
		FromTo ft = new FromTo();
		int from = (currentPage - 1) * 5;
		int to = ((currentPage - 1) * 5) + 6;
		if(to > count) to = count + 1;
		ft.setFrom(from);
		ft.setTo(to);
		List<Movie> imageList = this.movieDao.getImages(ft);
		ModelAndView mav= new ModelAndView("home/template");
		mav.addObject("BODY", "imageList.jsp");
		mav.addObject("startRow", startRow);
		mav.addObject("endRow", endRow);
		mav.addObject("total", count);
		mav.addObject("IMAGES", imageList);
		mav.addObject("currentPage", currentPage);
		mav.addObject("pageCount", totalPageCount);
		return mav;
	}
}
