package com.gds.controller;

import java.io.File;
import java.util.UUID;

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
import com.gds.util.AuthConstantUtil;
import com.gds.vo.CounselVO;
import com.gds.vo.PhotoVO;
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
	
	@RequestMapping("/enter.do")
    public String enter(HttpServletRequest request, Model model){
         return "admin_index";
    }
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login() {
		System.out.println("Welcome, stranger.");
		return "admin_login";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(
			HttpServletRequest request, 
			HttpServletResponse response,
			Model model,
			@RequestParam("password") String password) {
		
		HttpSession session = request.getSession();
		
		// if session already has admin auth value, send it admin page.
		Object authAttr = session.getAttribute("auth");
		if (authAttr != null && AuthConstantUtil.AUTH_ADMIN_VALUE.equals((String) authAttr)) {
			// System.out.println("Already authorized user.");
			return "admin_index";
		}
		
		System.out.println("Input password: " + password);
		
		// if it has password value matched with preassigned value,
		// give admin auth value to session and send it admin page.
		if (AuthConstantUtil.AUTH_ADMIN_PASSWORD.equals(password)) {
			// System.out.println("Password matched. Have been authorized now.");
			session.setAttribute("auth", AuthConstantUtil.AUTH_ADMIN_VALUE);
			return "admin_index";
		}
		// else the password value doesn't match with preassigned value,
		// send it login page with warning message.
		else {
			// System.out.println("Password not matched. Go for another shot.");
			model.addAttribute("message", "Password did not match!");
			return "admin_login";
		}
	}
	
	//�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�떦�뼲�삕�뜝�떥�벝�삕
	@RequestMapping("/photoUpload.do")
	public String photoUpload(HttpServletRequest request, PhotoVO vo){
	    String callback = vo.getCallback();
	    String callback_func = vo.getCallback_func();
	    String file_result = "";
	    try {
	        if(vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null && !vo.getFiledata().getOriginalFilename().equals("")){
	            //�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�떦紐뚯삕
	            String original_name = vo.getFiledata().getOriginalFilename();
	            String ext = original_name.substring(original_name.lastIndexOf(".")+1);
	            //�뜝�룞�삕�뜝�룞�삕 �뜝�뜦蹂멨뜝�룞�삕�뜝占�
	            String defaultPath = request.getSession().getServletContext().getRealPath("/");
	            //�뜝�룞�삕�뜝�룞�삕 �뜝�뜦蹂멨뜝�룞�삕�뜝占� _ �뜝�룫�꽭怨ㅼ삕�뜝占�
	            String path = defaultPath + "resource" + File.separator + "photo_upload" + File.separator;              
	            File file = new File(path);
	            System.out.println("path:"+path);
	            //�뜝�룞�삕�뜝�뜲由� �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝占� �뜝�룞�삕�뜝�뜲由� �뜝�룞�삕
	            if(!file.exists()) {
	                file.mkdirs();
	            }
	            //�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�떥�벝�삕 �뜝�룞�삕 �뜝�룞�삕�뜝�떦紐뚯삕(�뜝�떬湲�諭꾩삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떆紐뚯삕�뜝�룞�삕 �뜝�떗�뒗怨ㅼ삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕)
	            String realname = UUID.randomUUID().toString() + "." + ext;
	        ///////////////// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�떦�뼲�삕�뜝�룞�삕 ///////////////// 
	            vo.getFiledata().transferTo(new File(path+realname));
	            file_result += "&bNewLine=true&sFileName="+original_name+"&sFileURL=/resource/photo_upload/"+realname;
	        } else {
	            file_result += "&errstr=error";
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "redirect:" + callback + "?callback_func="+callback_func+file_result;
	}
	
	@RequestMapping("/counsel/enter.do")
	public String enterCounsel() {
		return "admin_index";
	}

	@RequestMapping("/counsel/list.ajax")
	public ModelAndView listCounsel(SearchVO searchVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", counselService.pagingCounsel(searchVO));
		mav.setViewName("admin_counsel_list_ajax");
		return mav;
	}
	
	@RequestMapping("/counsel/get.ajax")
	public ModelAndView getCounsel(CounselVO counselVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("counsel", counselService.getCounsel(counselVO));
		mav.setViewName("admin_counsel_content_ajax");
		return mav;
	}

	@RequestMapping("/counsel/modify.ajax")
	@ResponseBody
	public boolean modifyCounsel(CounselVO counselVO) {
		return counselService.modifyCounsel(counselVO);
	}

}
