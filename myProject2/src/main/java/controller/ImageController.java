package controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.ImageDao;
import model.FromTo;
import model.ImageBBS;
import model.Jari;

@Controller
public class ImageController {
	@Autowired
	private ImageDao imageDao;
	
	@RequestMapping(value="/image/movieUpdateDo.html")
	public ModelAndView update(ImageBBS imageBBS, HttpSession session, HttpServletRequest request) throws Exception{
		ServletContext ctx = session.getServletContext();
		String filePath = ctx.getRealPath("/upload");//upload폴더의 절대경로 획득
		String encType = "euc-kr";
		int maxSize = 5 * 1024 * 1024;
		MultipartRequest multipart = new MultipartRequest(request, filePath, maxSize, encType, 
				new DefaultFileRenamePolicy());
		String pictureUrl = null;
		ImageBBS old = this.imageDao.getImageDetail(Integer.parseInt(multipart.getParameter("SEQNO")));//글번호로 조회
		ModelAndView mav = new ModelAndView("home/main");
		pictureUrl = multipart.getFilesystemName("pictureUrl");//파일 업로드 실행
		if(pictureUrl == null) {//업로드가 실패한 경우, 즉 이미지 이름을 변경하지 않은 경우
			imageBBS.setPictureUrl(old.getPictureUrl());//기존의 이미지 이름을 설정
		}else {
			imageBBS.setPictureUrl(pictureUrl);//변경된 이미지 이름을 설정
		}
		imageBBS.setSeqno(Integer.parseInt(multipart.getParameter("SEQNO")));//글번호 설정
		imageBBS.setMoviename(multipart.getParameter("moviename"));//제목 설정
		imageBBS.setDerector(multipart.getParameter("derector"));//리렉터 설정
		imageBBS.setDescription(multipart.getParameter("description"));//내용 설정
		this.imageDao.updateImageBBS(imageBBS);//DB에서 update실행
		mav.addObject("BODY", "movieUpdateResult.jsp");
		return mav;
	}
	
	@RequestMapping(value="/image/movieUpdate.html")
	public ModelAndView updateForm(Integer SEQNO) {
		ModelAndView mav = new ModelAndView("home/main");
		ImageBBS bbs = this.imageDao.getImageDetail(SEQNO);//글번호로 검색
		mav.addObject("imageBBS",bbs);
		mav.addObject("BODY", "movieUpdateForm.jsp");
		return mav;
	}
	
	@RequestMapping(value="/image/movieDeleteDo.html")
	public ModelAndView deleteDo(ImageBBS imageBBS) {
		ModelAndView mav = new ModelAndView("home/main");
		this.imageDao.deleteImageBBS(imageBBS.getSeqno());
		mav.addObject("BODY", "movieDeleteResult.jsp");
		return mav;
	}
	
	@RequestMapping(value="/image/movieDelete.html")
	public ModelAndView deleteForm(Integer SEQNO) {
		ModelAndView mav = new ModelAndView("home/main");
		ImageBBS bbs = this.imageDao.getImageDetail(SEQNO);//글번호로 검색
		mav.addObject("imageBBS",bbs);
		mav.addObject("BODY", "movieDeleteForm.jsp");
		return mav;
	}
	
	@RequestMapping(value="/image/movieDetail.html")
	public ModelAndView movieDetail(Integer SEQNO, HttpSession session) {
		ModelAndView mav = new ModelAndView("home/main");
		ImageBBS bbs = this.imageDao.getImageDetail(SEQNO);
		String id = (String)session.getAttribute("ADMIN");
		if(id == null || ! id.equals(bbs.getId())) {//로그인을 안하거나 작성자가 다른 경우
			mav.addObject("BODY", "movieDetail.jsp");
		}else {
			mav.addObject("BODY", "movieDetailOwner.jsp");
		}
		mav.addObject("BBS", bbs);
		return mav;
	}
	
	@RequestMapping(value="/image/write.html")
	public ModelAndView write(ImageBBS imageBBS, BindingResult br, HttpSession session,
			HttpServletRequest request) throws Exception{
		ServletContext ctx = session.getServletContext();
		String filePath = ctx.getRealPath("/upload");//upload폴더의 정대경로 획득
		String encType = "euc-kr";//언어코드
		int maxSize = 1024 * 5 * 1024;//업로드 최대크기
		MultipartRequest multipart = new MultipartRequest(request, filePath, maxSize, 
				encType, new DefaultFileRenamePolicy());
		String image_name = multipart.getFilesystemName("pictureUrl");//업로드 실행
		int seqno = this.imageDao.getMaxId()+1;
		imageBBS.setSeqno(seqno);//글번호
		String id = (String)session.getAttribute("ADMIN");
		imageBBS.setId(id);
		imageBBS.setMoviename(multipart.getParameter("moviename"));
		imageBBS.setPictureUrl(image_name);//파일이름 설정
		imageBBS.setDerector(multipart.getParameter("derector"));//파일이름 설정
		imageBBS.setMovieDate(multipart.getParameter("movieDate"));//파일이름 설정
		imageBBS.setDescription(multipart.getParameter("description"));
		
		this.imageDao.create(imageBBS);//DB에 삽입
		return new ModelAndView("redirect:/image/movieList.html");
	}
	
	@RequestMapping(value="/image/movieList.html")
	public ModelAndView movieList(Integer PAGE_NUM) {
		if(PAGE_NUM == null) PAGE_NUM = 1;
		int currentPage = PAGE_NUM;//현재페이지
		int count = this.imageDao.getImageCount();//게시글의 갯수
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
		List<ImageBBS> imageList = this.imageDao.getImages(ft);
		ModelAndView mav= new ModelAndView("home/main");
		mav.addObject("BODY", "movieList.jsp");
		mav.addObject("startRow", startRow);
		mav.addObject("endRow", endRow);
		mav.addObject("total", count);
		mav.addObject("IMAGES", imageList);
		mav.addObject("currentPage", currentPage);
		mav.addObject("pageCount", totalPageCount);
		return mav;
	}
	
	
	@RequestMapping(value="/image/movieWriteForm.html")
	public ModelAndView writeForm() {
		ModelAndView mav = new ModelAndView("home/main");
		mav.addObject(new ImageBBS());
		mav.addObject("BODY", "movieWriteForm.jsp");
		return mav;
	}
	
	@RequestMapping(value="/image/yeyak.html")
	public ModelAndView yeyak(Jari jari, HttpSession session) {
		ModelAndView mav = new ModelAndView("home/main");
		List<ImageBBS> movieName = this.imageDao.findMovie();
		String id = (String)session.getAttribute("USER");
		if(id == null) {
			mav.addObject("BODY", "redirect:/home/main.html");
			return mav;
		}else {
			mav.addObject(new Jari());
			mav.addObject("Movie", movieName);
			mav.addObject("BODY", "yeyak.jsp");
			return mav;
		}
		
	}

}
