package com.gds.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gds.service.QnaService;
import com.gds.vo.QnaVO;
import com.gds.vo.SearchVO;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/enter.do")
	public String moveQna(Model model) {
		model.addAttribute("searchVO", qnaService.pagingQna(new SearchVO()));
		model.addAttribute("contentPage", "/qna.jsp");
		return "index";
	}
	
	@RequestMapping("/form.do")
	public String moveQnaForm(Model model) {
		model.addAttribute("contentPage", "/qna_form.jsp");
		return "index";
	}
	
	@RequestMapping("/write.do")
	@ResponseBody
	public boolean writeQna(QnaVO qna) {
		return qnaService.writeQna(qna);
	}
	
	@RequestMapping(value="/get.do", method=RequestMethod.GET)
	public ModelAndView getQnaGet(QnaVO qnaVO) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		
		qnaVO = qnaService.getQna(qnaVO);
		if ("n".equals(qnaVO.getOpenyn())) {
			mav.addObject("id", qnaVO.getId());
			mav.addObject("contentPage", "/qna_check.jsp");
			return mav;
		}
		
		mav.addObject("qna", qnaVO);
		mav.addObject("contentPage", "/qna_content.jsp");
		return mav;
	}
	
	@RequestMapping(value="/get.do", method=RequestMethod.POST)
	public ModelAndView getQnaPost(QnaVO qnaVO) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		System.out.println(qnaVO);
		String inputPassword = qnaVO.getPassword();
		
		qnaVO = qnaService.getQna(qnaVO);
		System.out.println(qnaVO);
		if (inputPassword.equals(qnaVO.getPassword())) {
			mav.addObject("qna", qnaVO);
			mav.addObject("contentPage", "/qna_content.jsp");
			return mav;
		} else {
			mav.addObject("message", "비밀번호가 일치하지 않습니다.");
			mav.addObject("contentPage", "/qna_check.jsp");
			return mav;
		}
	}
	
	@RequestMapping("/list.ajax")
	public ModelAndView listBoard(SearchVO searchVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", qnaService.pagingQna(searchVO));
		mav.setViewName("qna_list_ajax");
		return mav;
	}
	
	@RequestMapping("/answer.do")
	public String answerQna(QnaVO qna) {
		qnaService.answerQna(qna);
		return "httpTest";
	}
	
	@RequestMapping("/delete.do")
	public String deleteQna(int id) {
		qnaService.deleteQna(id);
		return "httpTest";
	}
	
}
