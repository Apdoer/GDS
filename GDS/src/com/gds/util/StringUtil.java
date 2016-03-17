package com.gds.util;

public class StringUtil {

	public static String reduceString(String str, int maxLength) {
		if (str == null || maxLength < 0) return null;
		return str.length() > maxLength ? str.substring(0, maxLength) + ".." : str;
	}
	
	public static String pickThumbnail(String str) {
		if (str.indexOf("<img") < 0) return null;
		int startIdx = str.indexOf("\"", str.indexOf("src", str.indexOf("<img"))) + 1;
		int endIdx = str.indexOf("\"", startIdx);
		return str.substring(startIdx, endIdx);
	}
	
	public static void main(String[] args) {
		String str = "<p><img src=\"/upload/20160317234419817d01b5-b9ba-43f8-bc11-351d3d616e6d.jpg\" title=\"why.jpg\"><br style=\"clear:both;\">&nbsp;</p><img src=\"/upload/20160317234419817d01b5-b9ba-43f8-bc11-351d3d6aaaa.jpg\" title=\"why.jpg\">";
		System.out.println(pickThumbnail(str));
	}
	
}
