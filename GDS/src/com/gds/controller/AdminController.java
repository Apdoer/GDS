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

import com.gds.service.BoardService;
import com.gds.service.CategoryService;
import com.gds.vo.CategoryVO;
import com.gds.vo.PhotoVO;

@Controller
public class AdminController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping ("/admin.do" )
    public String admin(HttpServletRequest request, Model model){

		 System .out .println (request .getParameter ("title" ));
         System .out .println (request .getParameter ("contents" ));
         System .out .println (request .getParameter ("category" ));
         
         List<CategoryVO> cateList;
         cateList = categoryService.listCategory();
         model.addAttribute("categoryList", cateList);
         return "admin" ;
    }
	
	@RequestMapping ("/insertBlog.do" )
    public String insertBlog(HttpServletRequest request, Model model){

         String title = request .getParameter ("title" );
         String contents = request .getParameter ("content" );
         String category = request .getParameter ("category" );
         
         
         boardService.insertBlog(title, contents);
         
         List<CategoryVO> cateList;
         cateList = categoryService.listCategory();
         model.addAttribute("categoryList", cateList);
         return "admin" ;
    }
	
	
	//�������Ͼ��ε�
	@RequestMapping("/photoUpload.do")
	public String photoUpload(HttpServletRequest request, PhotoVO vo){
	    String callback = vo.getCallback();
	    String callback_func = vo.getCallback_func();
	    String file_result = "";
	    try {
	        if(vo.getFiledata() != null && vo.getFiledata().getOriginalFilename() != null && !vo.getFiledata().getOriginalFilename().equals("")){
	            //������ �����ϸ�
	            String original_name = vo.getFiledata().getOriginalFilename();
	            String ext = original_name.substring(original_name.lastIndexOf(".")+1);
	            //���� �⺻���
	            String defaultPath = request.getSession().getServletContext().getRealPath("/");
	            //���� �⺻��� _ �󼼰��
	            String path = defaultPath + "resource" + File.separator + "photo_upload" + File.separator;              
	            File file = new File(path);
	            System.out.println("path:"+path);
	            //���丮 �������� ������� ���丮 ��
	            if(!file.exists()) {
	                file.mkdirs();
	            }
	            //������ ���ε� �� ���ϸ�(�ѱ۹����� ���� �������� �ø��� �ʴ°��� ����)
	            String realname = UUID.randomUUID().toString() + "." + ext;
	        ///////////////// ������ ���Ͼ��� ///////////////// 
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
	
	
	//�������Ͼ��ε�
	@RequestMapping("/multiplePhotoUpload.do")
	public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response){
	    try {
	         //��������
	         String sFileInfo = "";
	         //���ϸ��� �޴´� - �Ϲ� �����ϸ�
	         String filename = request.getHeader("file-name");
	         //���� Ȯ����
	         String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
	         //Ȯ���ڸ��ҹ��ڷ� ����
	         filename_ext = filename_ext.toLowerCase();
	         //���� �⺻���
	         String dftFilePath = request.getSession().getServletContext().getRealPath("/");
	         //���� �⺻��� _ �󼼰��
//	         String filePath = dftFilePath + "resource" + File.separator + "photo_upload" + File.separator;
	         String filePath = dftFilePath + "upload" + File.separator;
	         //������ ��η� ������ �κ�
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
	         ///////////////// ������ ���Ͼ��� ///////////////// 
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
	         ///////////////// ������ ���Ͼ��� /////////////////
	         // ���� ���
	         sFileInfo += "&bNewLine=true";
	         // img �±��� title �Ӽ��� �����ϸ����� �������ֱ� ����
	         sFileInfo += "&sFileName="+ filename;;
	         sFileInfo += "&sFileURL="+"/GDS/upload/"+realFileNm;
//	         sFileInfo += "&sFileURL="+realFileNm;
	         PrintWriter print = response.getWriter();
	         System.out.println(sFileInfo);
	         print.print(sFileInfo);
	         print.flush();
	         print.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}


}
