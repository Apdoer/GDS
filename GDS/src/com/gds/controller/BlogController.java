package com.gds.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gds.service.BlogService;
import com.gds.service.CategoryService;
import com.gds.vo.BlogVO;
import com.gds.vo.CategoryVO;

@Controller
public class BlogController {

	@Autowired
	BlogService blogService;
	
	@Autowired
	CategoryService categoryService;
	
    //사진 업로드 
	@RequestMapping("/multiplePhotoUpload.do")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response){
	    try {
	         //�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕
	         String sFileInfo = "";
	         //�뜝�룞�삕�뜝�떦紐뚯삕�뜝�룞�삕 �뜝�뙣�뒗�뙋�삕 - �뜝�떦諭꾩삕 �뜝�룞�삕�뜝�룞�삕�뜝�떦紐뚯삕
	         String filename = request.getHeader("file-name");
	         //�뜝�룞�삕�뜝�룞�삕 �솗�뜝�룞�삕�뜝�룞�삕
	         String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
	         //�솗�뜝�룞�삕�뜝�뙓紐뚯삕�뜝��諭꾩삕�뜝�뙓琉꾩삕 �뜝�룞�삕�뜝�룞�삕
	         filename_ext = filename_ext.toLowerCase();
	         //�뜝�룞�삕�뜝�룞�삕 �뜝�뜦蹂멨뜝�룞�삕�뜝占�
	         String dftFilePath = request.getSession().getServletContext().getRealPath("/");
	         //�뜝�룞�삕�뜝�룞�삕 �뜝�뜦蹂멨뜝�룞�삕�뜝占� _ �뜝�룫�꽭怨ㅼ삕�뜝占�
//		         String filePath = dftFilePath + "resource" + File.separator + "photo_upload" + File.separator;
	         String filePath = dftFilePath + "upload" + File.separator;
	         //�뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕嶸▼뜝占� �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�떥釉앹삕
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
	         
	         System.out.println(rlFileNm);
	         ///////////////// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�떦�뼲�삕�뜝�룞�삕 ///////////////// 
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
	         ///////////////// �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�떦�뼲�삕�뜝�룞�삕 /////////////////
	         // �뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝占�
	         sFileInfo += "&bNewLine=true";
	         // img �뜝�듅源띿삕�뜝�룞�삕 title �뜝�뙂�눦�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�떦紐뚯삕�뜝�룞�삕�뜝�룞�삕 �뜝�룞�삕�뜝�룞�삕�뜝�룞�삕�뜝�뙇源띿삕 �뜝�룞�삕�뜝�룞�삕
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
	
	@RequestMapping ("/insertBlog.do" )
    public String insertBlog(HttpServletRequest request, Model model){

         String title = request .getParameter ("title" );
         String contents = request .getParameter ("content" );
         String category = request .getParameter ("category" );
         
         BlogVO blogVO = new BlogVO(title, contents);
         
         blogService.insertBlog(blogVO);
         
         List<CategoryVO> cateList;
         cateList = categoryService.listCategory();
         model.addAttribute("categoryList", cateList);
         return "admin" ;
    }
	
	@RequestMapping ("/selectBlog.do" )
    public String selectBlog(HttpServletRequest request, Model model){

         //String title = request .getParameter ("title" );
         String title = "상육이짱";
         
         BlogVO blogVO = new BlogVO();
         blogVO.setTitle(title);
         
         List<BlogVO> blogList;
         blogList = blogService.selectBlog(blogVO);
         System.out.println(blogList);
         model.addAttribute("blogList", blogList);
         return "blog_view" ;
    }
}
