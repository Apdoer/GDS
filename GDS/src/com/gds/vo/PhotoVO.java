package com.gds.vo;

import org.springframework.web.multipart.MultipartFile;

public class PhotoVO {
	//photo_uploader.html占쏙옙占쏙옙占쏙옙占쏙옙 form占승그놂옙占쏙옙 占쏙옙占쏙옙占싹댐옙 file 占승깍옙占쏙옙 name占쏙옙占� 占쏙옙치占쏙옙占쏙옙占쏙옙
    private MultipartFile Filedata;
    //callback URL
    private String callback;
    //占쌥뱄옙占쌉쇽옙?
    private String callback_func;
 
    public MultipartFile getFiledata() {
        return Filedata;
    }
 
    public void setFiledata(MultipartFile filedata) {
        Filedata = filedata;
    }
 
    public String getCallback() {
        return callback;
    }
 
    public void setCallback(String callback) {
        this.callback = callback;
    }
 
    public String getCallback_func() {
        return callback_func;
    }
 
    public void setCallback_func(String callback_func) {
        this.callback_func = callback_func;
    }
}
