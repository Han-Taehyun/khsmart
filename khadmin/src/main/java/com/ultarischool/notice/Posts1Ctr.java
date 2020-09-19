package com.ultarischool.notice;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import edumgt.common.util.FileUtil;
import edumgt.common.util.FileVO;

@Controller
public class Posts1Ctr {

	@Autowired
	private Posts1Svc posts1Svc;

	/************** calendar *************************/
	@RequestMapping(value = "/vwcal")
	public String VwCalRead(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		calendar mvo = new calendar();

		mvo = posts1Svc.selectCalOne(sn);
		modelMap.addAttribute("mvo", mvo);

		return "posts/vwcal";

	}

	@RequestMapping(value = "/vwcal2")
	public String VwCalRead2(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		calendar mvo = new calendar();

		mvo = posts1Svc.selectCalOne(sn);
		modelMap.addAttribute("mvo", mvo);

		return "posts/vwcal2";

	}

	@RequestMapping(value = "/newcal")
	public String newCal(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		String ymd = "";
		if (request.getParameter("ymd") != null) {
			ymd = request.getParameter("ymd");
		}

		String prgcode = "";
		if (request.getParameter("prgcode") != null) {
			prgcode = request.getParameter("prgcode");
		}

		String srchuserid = "";
		if (request.getParameter("srchuserid") != null) {
			srchuserid = request.getParameter("srchuserid");
		}

		calendar mvo = new calendar();

		mvo.setSrchprgcode(prgcode);
		mvo.setSrchuserid(srchuserid);

		mvo.setYmd(ymd);

		mvo.setYyyy(ymd.split("-")[0]);
		mvo.setMm(ymd.split("-")[1]);
		mvo.setDd(ymd.split("-")[2]);

		return "posts/newcal";

	}

	@RequestMapping(value = "/calDel")
	public String calDelete(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		String sn = "";
		if (request.getParameter("sn") != null) {
			sn = request.getParameter("sn");
		}

		posts1Svc.deleteCalOne(sn);

		calendar mvo = new calendar();
		mvo.setStatus("삭제");

		modelMap.addAttribute("mvo", mvo);

		return "posts/closepop";

	}

	@RequestMapping(value = "/calSave")
	public String calSave(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session,
			calendar mvo) {

		String userid = request.getParameter("userid");
		String prgcode = request.getParameter("prgcode");

		mvo.setUserid(userid);
		mvo.setPrgcode(prgcode);

		posts1Svc.insertCalOne(mvo);

		mvo.setDdd("END");

		modelMap.addAttribute("mvo", mvo);

		return "posts/closepop";

	}

	@RequestMapping(value = "/calendar")
	public String calendar1(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		List<?> listview = posts1Svc.selectCalList();

		modelMap.addAttribute("listview", listview);

		return "posts/calendar";

	}

	@RequestMapping(value = "/PostList")
	public String posts1(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		searchVO.pageCalculate(posts1Svc.selectPosts1Count(searchVO));

		List<?> listview = posts1Svc.selectPosts1List(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "posts/PostsList";

	}

	@RequestMapping(value = "/StudyPList")
	public String StudyPList(HttpServletRequest request, SearchVO searchVO, ModelMap modelMap, HttpSession session) {

		searchVO.pageCalculate(posts1Svc.selectStudyPosts1Count(searchVO));

		List<?> listview = posts1Svc.selectStudyPosts1List(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "posts/StudyPostsList";

	}

	@RequestMapping(value = "/PostForm")
	public String posts1Form(HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		return "posts/PostsForm";
	}

	@RequestMapping(value = "/PostRead")
	public String posts1Read(HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		String sn = request.getParameter("sn");

		posts1Info = posts1Svc.selectPosts1One(sn);

		modelMap.addAttribute("posts1Info", posts1Info);

		return "posts/PostsRead";
	}

	@RequestMapping(value = "/PostSave")
	public String posts1Save(SearchVO searchVO, HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		String USERID = "";
		if (request.getSession().getAttribute("USERID") != null) {
			USERID = (String) request.getSession().getAttribute("USERID");
		}

		String[] fileno = request.getParameterValues("fileno");
		FileUtil fs = new FileUtil();
		List<FileVO> filelist = fs.saveAllFilesBB(posts1Info.getUploadfile());
		posts1Info.setUserid(USERID);

		posts1Svc.insertPosts1(posts1Info, filelist, fileno);

		searchVO.pageCalculate(posts1Svc.selectPosts1Count(searchVO)); // startRow, endRow

		List<?> listview = posts1Svc.selectPosts1List(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "posts/PostsList";
	}

	@RequestMapping(value = "/PostUp")
	public String posts1Up(SearchVO searchVO, HttpServletRequest request, Posts1VO posts1Info, ModelMap modelMap) {

		String USERID = "";
		if (request.getSession().getAttribute("USERID") != null) {
			USERID = (String) request.getSession().getAttribute("USERID");
		}

		String sn = request.getParameter("sn");

		String title = request.getParameter("title");
		String post = request.getParameter("post");

		posts1Info.setUserid(USERID);
		posts1Info.setTitle(title);
		posts1Info.setPost(post);

		posts1Info.setSn(sn);

		String[] fileno = request.getParameterValues("fileno");
		FileUtil fs = new FileUtil();
		List<FileVO> filelist = fs.saveAllFilesBB(posts1Info.getUploadfile());

		posts1Svc.updatePosts1(posts1Info, filelist, fileno);

		searchVO.pageCalculate(posts1Svc.selectPosts1Count(searchVO)); // startRow, endRow

		List<?> listview = posts1Svc.selectPosts1List(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "posts/PostsList";
	}

	@RequestMapping(value = "/PostDelete")
	public String posts1Delete(HttpServletRequest request, SearchVO searchVO, Posts1VO posts1Info, ModelMap modelMap) {

		String sn = request.getParameter("sn");
		posts1Svc.Posts1Delete(sn);

		searchVO.pageCalculate(posts1Svc.selectPosts1Count(searchVO)); // startRow, endRow

		List<?> listview = posts1Svc.selectPosts1List(searchVO);

		modelMap.addAttribute("listview", listview);
		modelMap.addAttribute("searchVO", searchVO);

		return "posts/PostsList";
	}

}
