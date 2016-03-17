package com.gds.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gds.service.BlogService;
import com.gds.service.BoardService;
import com.gds.service.CategoryService;
import com.gds.service.CounselService;
import com.gds.service.QnaService;
import com.gds.util.AuthUtil;
import com.gds.vo.BlogVO;
import com.gds.vo.BoardVO;
import com.gds.vo.CategoryVO;
import com.gds.vo.CounselVO;
import com.gds.vo.QnaVO;
import com.gds.vo.SearchVO;

@Controller
@RequestMapping ("/admin" )
public class AdminController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	BlogService blogService;
	
	@Autowired
	CounselService counselService;
	
	@Autowired
	QnaService qnaService;
	
	/**
	 * Admin entrance.
	 * Shows counsel management page first.
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/enter.do")
	public ModelAndView enter(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("undoneCounselCnt", counselService.getUndoneCounselCount());
		mav.setViewName("admin_index");
		return mav;
	}
	
	/**
	 * Send user to admin login form page.
	 * 
	 * @return
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		// System.out.println("Welcome, stranger.");
		return "admin_login";
	}
	
	/**
	 * Process admin login.
	 * If success, send user to admin page.
	 * Else fail, send user back to admin login form.
	 * 
	 * @param request
	 * @param response
	 * @param mav
	 * @param password
	 * @return
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public ModelAndView login(
			HttpServletRequest request, 
			HttpServletResponse response,
			ModelAndView mav,
			@RequestParam("password") String password) {
		
		HttpSession session = request.getSession();
		
		mav.addObject("undoneCounselCnt", counselService.getUndoneCounselCount());
		mav.setViewName("admin_index");
		
		// if session already has admin auth value, send it admin page.
		Object authAttr = session.getAttribute("auth");
		if (authAttr != null && AuthUtil.AUTH_ADMIN_VALUE.equals((String) authAttr)) {
			// System.out.println("Already authorized user.");
			return mav;
		}
		
		System.out.println("Input password: " + password);
		
		// if it has password value matched with preassigned value,
		// give admin auth value to session and send it admin page.
		if (AuthUtil.AUTH_ADMIN_PASSWORD.equals(password)) {
			// System.out.println("Password matched. Have been authorized now.");
			session.setAttribute("auth", AuthUtil.AUTH_ADMIN_VALUE);
			return mav;
		}
		// else the password value doesn't match with preassigned value,
		// send it login page with warning message.
		else {
			// System.out.println("Password not matched. Go for another shot.");
			mav.addObject("message", "Password did not match!");
			mav.setViewName("admin_login");
			return mav;
		}
	}
	
	/**
	 * Invalidate user session and send user to home page.
	 * 
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/logout.do")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().removeAttribute("auth");
		response.sendRedirect("http://gdsdream.com");
	}
	
	// 여기서부터 상담신청 관련 관리자 메서드 ('/counsel'로 시작해줄 것!)
	
	/**
	 * 
	 * 
	 * @return
	 */
	@RequestMapping("/counsel/enter.do")
	public String enterCounsel() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("undoneCounselCnt", counselService.getUndoneCounselCount());
		mav.addObject("searchVO", counselService.pagingCounsel(new SearchVO()));
		mav.setViewName("admin_counsel_list_ajax");
		return "admin_index";
	}

	/**
	 * 
	 * 
	 * @param searchVO
	 * @return
	 */
	@RequestMapping("/counsel/list.ajax")
	public ModelAndView listCounsel(SearchVO searchVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("undoneCounselCnt", counselService.getUndoneCounselCount());
		mav.addObject("searchVO", counselService.pagingCounsel(searchVO));
		mav.setViewName("admin_counsel_list_ajax");
		return mav;
	}
	
	/**
	 * 
	 * 
	 * @param counselVO
	 * @return
	 */
	@RequestMapping("/counsel/get.ajax")
	public ModelAndView getCounsel(CounselVO counselVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("counsel", counselService.getCounsel(counselVO));
		mav.setViewName("admin_counsel_content_ajax");
		return mav;
	}

	/**
	 * 
	 * 
	 * @param counselVO
	 * @return
	 */
	@RequestMapping("/counsel/modify.ajax")
	@ResponseBody
	public Map<String, Object> modifyCounsel(CounselVO counselVO) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", counselService.modifyCounsel(counselVO));
		result.put("undoneCounselCnt", counselService.getUndoneCounselCount());
		return result;
	}
	
	// 여기서부터 공지 / 이벤트 관련 관리자 메서드 ('/board'로 시작해줄 것!)
	
	@RequestMapping("/board/enter.do")
	public String enterBoard(Model model) {
		model.addAttribute("contentPage", "/board.jsp");
		return "admin_index";
	}
	
	@RequestMapping("/board/form.do")
	public String formBoard(Model model) {
		model.addAttribute("contentPage", "/board_form.jsp");
		return "admin_index";
	}
	
	@RequestMapping("/board/get.do")
	public ModelAndView getBoard(BoardVO boardVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("board", boardService.getBoard(boardVO));
		mav.addObject("contentPage", "/board_content.jsp");
		mav.setViewName("admin_index");
		return mav;
	}
	
	@RequestMapping("/board/write.ajax")
	@ResponseBody
	public Map<String, Object> writeBoard(BoardVO boardVO) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", boardService.writeBoard(boardVO));
		return result;
	}
	
	@RequestMapping("/board/update.ajax")
	@ResponseBody
	public Map<String, Object> updateBoard(BoardVO boardVO) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", boardService.modifyBoard(boardVO));
		return result;
	}
	
	@RequestMapping("/board/updateViewBoard.do")
	public String updateViewBoard(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request .getParameter ("id" ));
		
		model.addAttribute("contentPage", "/board_form.jsp");
		BoardVO boardVO = new BoardVO();
		BoardVO rtnBoardVO = new BoardVO();
		boardVO.setId(id);
		rtnBoardVO = boardService.getBoard(boardVO);
		model.addAttribute("board", rtnBoardVO);
		model.addAttribute("contentPage", "/board_update_form.jsp");
		return "admin_index";
	}
	
	@RequestMapping("/board/delete.ajax")
	@ResponseBody
	public Map<String, Object> deleteBoard(BoardVO boardVO) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", boardService.deleteBoard(boardVO.getId()));
		return result;
	}
	
	// 여기서부터 온라인 문의 관련 관리자 메서드 ('/qna'로 시작해줄 것!)
	
	@RequestMapping("/qna/enter.do")
	public String enterQna(Model model) {
		model.addAttribute("contentPage", "/qna.jsp");
		return "admin_index";
	}
	
	@RequestMapping("/qna/get.do")
	public ModelAndView getQna(QnaVO qnaVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("qna", qnaService.getQna(qnaVO));
		mav.addObject("contentPage", "/qna_content.jsp");
		mav.setViewName("admin_index");
		return mav;
	}
	
	@RequestMapping("/qna/answer.ajax")
	@ResponseBody
	public Map<String, Object> answerQna(QnaVO qnaVO) {
		System.out.println(qnaVO);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", qnaService.answerQna(qnaVO));
		return result;
	}
	
	@RequestMapping("/qna/delete.ajax")
	@ResponseBody
	public Map<String, Object> deleteQna(QnaVO qnaVO) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", qnaService.deleteQna(qnaVO.getId()));
		return result;
	}

	// 여기서부터 관리자 별헤는밤 매서드
	@RequestMapping("/blog/enter.do")
	public String enterBlog(Model model) {
		model.addAttribute("contentPage", "/blog_view_admin.jsp");
		return "admin_index";
	}
	
	@RequestMapping("/blog/selectBlog.do")
	public String selectBlog(HttpServletRequest request, Model model) {
		 int id = Integer.parseInt(request.getParameter("id"));
         BlogVO blogVO = new BlogVO();
         blogVO.setId(id);
         
         List<BlogVO> blogList;
         blogList = blogService.selectBlog(blogVO);
         model.addAttribute("blogList", blogList);
         model.addAttribute("contentPage", "/blog_view_single.jsp");
		return "admin_index";
	}
	
	/*
	 * 
	 */
	@RequestMapping("/blog/edit.do")
	public String editBlog(Model model) {
		model.addAttribute("contentPage", "/blog_write.jsp");
		return "admin_index";
	}
	
	//페이징 ajax
	@RequestMapping("/blog/list.ajax")
	public ModelAndView listBoard(SearchVO searchVO) {

		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", blogService.pagingBlog(searchVO));
		mav.setViewName("blog_list_ajax_page_admin");
		return mav;
	}
	
	// 여기서부터 상담과목(카테고리) 관련 관리자 메서드 ('/category'로 시작해줄 것!)
	
	@RequestMapping("/category/enter.do")
	public String enterCategory(Model model) {
		model.addAttribute("contentPage", "/admin_category.jsp");
		return "admin_index";
	}
	
	@RequestMapping("/category/list.ajax")
	public String listCategory(Model model) {
		model.addAttribute("categoryList", categoryService.listCategory());
		return "admin_category_list_ajax";
	}
	
	@RequestMapping("/category/create.ajax")
	@ResponseBody
	public Map<String, Object> createCategory(CategoryVO category) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", categoryService.createCategory(category));
		return result;
	}
	
	@RequestMapping("/category/delete.ajax")
	@ResponseBody
	public Map<String, Object> listCategory(CategoryVO category) {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", categoryService.deleteCategory(category.getId()));
		return result;
	}
	
}
