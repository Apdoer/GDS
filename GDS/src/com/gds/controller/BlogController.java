
package com.gds.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gds.service.BlogService;
import com.gds.service.BoardService;
import com.gds.service.CategoryService;
import com.gds.vo.BlogVO;
import com.gds.vo.SearchVO;

@Controller
@RequestMapping("/blog")
public class BlogController {

	@Autowired
	BlogService blogService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	CategoryService categoryService;
	
    //�궗吏� �뾽濡쒕뱶 
	@RequestMapping("/multiplePhotoUpload.do")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response){
	    try {
	         //占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
	         String sFileInfo = "";
	         //占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼣筌뤿슣�굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈솭占쎈뮉占쎈솇占쎌굲 - 占쎈쐻占쎈뼣獄�袁⑹굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼣筌뤿슣�굲
	         String filename = request.getHeader("file-name");
	         //占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎌넇占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
	         String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
	         //占쎌넇占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈솓筌뤿슣�굲占쎈쐻占쏙옙獄�袁⑹굲占쎈쐻占쎈솓筌뚭쑴�굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
	         filename_ext = filename_ext.toLowerCase();
	         //占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈쑆癰귣ŀ�쐻占쎈짗占쎌굲占쎈쐻�뜝占�
	         String dftFilePath = request.getSession().getServletContext().getRealPath("/");
	         //占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈쑆癰귣ŀ�쐻占쎈짗占쎌굲占쎈쐻�뜝占� _ 占쎈쐻占쎈＋占쎄쉭�ⓦ끉�굲占쎈쐻�뜝占�
//		         String filePath = dftFilePath + "resource" + File.separator + "photo_upload" + File.separator;
	         String filePath = dftFilePath + "upload" + File.separator;
	         //占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲蒻멤뼹�쐻�뜝占� 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈뼢�뇡�빘�굲
	        // String filePath = "C:/Users/kinot_000/git/GDS/GDS/WebContent/se2/img/";
	         
	         File file = new File(filePath);
	         if(!file.exists()) {
	            file.mkdirs();
	         }
	         String realFileNm = "";
	         SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
	         String today= formatter.format(new java.util.Date());
	         realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
	         String rlFileNm = filePath + realFileNm;
	         
	         ///////////////// 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼣占쎈섣占쎌굲占쎈쐻占쎈짗占쎌굲 ///////////////// 
	         InputStream is = request.getInputStream();
	         OutputStream os=new FileOutputStream(rlFileNm);
	         int numRead;
	         byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];
	         while((numRead = is.read(b,0,b.length)) != -1){
	            os.write(b,0,numRead);
	         }
	         if(is != null) {
	            is.close();
	         }
	         os.flush();
	         os.close();
	         ///////////////// 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼣占쎈섣占쎌굲占쎈쐻占쎈짗占쎌굲 /////////////////
	         // 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻�뜝占�
	         sFileInfo += "&bNewLine=true";
	         // img 占쎈쐻占쎈뱟繹먮씮�굲占쎈쐻占쎈짗占쎌굲 title 占쎈쐻占쎈셽占쎈닰占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈뼣筌뤿슣�굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈솂繹먮씮�굲 占쎈쐻占쎈짗占쎌굲占쎈쐻占쎈짗占쎌굲
	         sFileInfo += "&sFileName="+ filename;;
	         sFileInfo += "&sFileURL="+"/GDS/upload/"+realFileNm;
//		         sFileInfo += "&sFileURL="+realFileNm;
	         PrintWriter print = response.getWriter();
	         System.out.println(sFileInfo);
	         print.print(sFileInfo);
	         print.flush();
	         print.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	@RequestMapping ("/insertBlog.ajax" )
	@ResponseBody
    public Map<String, Object> insertBlog(BlogVO blogVO, Model model){

         blogService.insertBlog(blogVO);
         Map<String, Object> result = new HashMap<String, Object>();
         result.put("status", "true");
 	 	return result ;
    }
	
	//블로그 글 작성 페이지 이동
	@RequestMapping ("/editBlog.do" )
	public String editBlog(HttpServletRequest request, Model model){
		
		model.addAttribute("contentPage", "/blog_write.jsp");
        return "index" ;
	}
	
	//하나의 블로그 게시물 선택
	@RequestMapping ("/selectBlog.do" )
    public String selectBlog(HttpServletRequest request, Model model){
         int id = Integer.parseInt(request.getParameter("id"));
         BlogVO blogVO = new BlogVO();
         blogVO.setId(id);
         
         List<BlogVO> blogList;
         blogList = blogService.selectBlog(blogVO);
         model.addAttribute("blogList", blogList);
         model.addAttribute("contentPage", "/blog_view_single.jsp");
         return "index" ;
    }
	
	//블로그 업데이트 화면 이동
	@RequestMapping ("/updateViewBlog.do" )
	public String updateViewBlog(HttpServletRequest request, Model model){
		int id = Integer.parseInt(request.getParameter("id"));
		BlogVO blogVO = new BlogVO();
		blogVO.setId(id);
		
		List<BlogVO> blogList;
		blogList = blogService.selectBlog(blogVO);
		model.addAttribute("blogList", blogList);
		model.addAttribute("contentPage", "/blog_write_update.jsp");
		return "index" ;
	}
	
	//하나의 블로그 게시물 삭제
	@RequestMapping ("/deleteBlog.do" )
	public String deleteBlog(HttpServletRequest request, Model model){
		int id = Integer.parseInt(request.getParameter("id"));
		BlogVO blogVO = new BlogVO();
		blogVO.setId(id);
		
		blogService.deleteBlog(blogVO);
		return "redirect:/blog/selectBlogAll.do";
	}
	
	//블로그 업데이트 버튼
	@RequestMapping ("/updateBlog.do" )
	public String updateBlog(HttpServletRequest request, Model model){
		
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request .getParameter ("title" );
		String content = request .getParameter ("content" );
		
		System.out.println(id);
		BlogVO blogVO = new BlogVO(id, title, content);
		
		System.out.println(blogVO);
		blogService.updateBlog(blogVO);
		
		
		return "redirect:/blog/selectBlogAll.do";
	}
	
	//블로그 화면에 불러오기 
	@RequestMapping ("/selectBlogAll.do" )
	public String selectBlogAll(HttpServletRequest request, Model model){
		
		List<BlogVO> blogList;
		blogList = blogService.selectBlogAll();
		model.addAttribute("blogList", blogList);
		model.addAttribute("contentPage", "/blog_view.jsp");
		return "index" ;
	}
	
	//페이징 ajax
	@RequestMapping("/list.ajax")
	public ModelAndView listBoard(SearchVO searchVO) {

		ModelAndView mav = new ModelAndView();
		mav.addObject("searchVO", blogService.pagingBlog(searchVO));
		mav.setViewName("blog_list_ajax_page");
		return mav;
	}
}
