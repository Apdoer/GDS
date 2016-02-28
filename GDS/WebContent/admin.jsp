<%@ page language ="java" contentType ="text/html; charset=UTF-8"
    pageEncoding= "UTF-8" %>
<! DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv= "Content-Type" content= "text/html; charset=UTF-8">
<title>Insert title here</title>
<script type= "text/javascript" src= "se2/js/HuskyEZCreator.js" charset= "utf-8"></script>
<script type= "text/javascript" >
function submitContents(elClickedObj) {
    // 에디터의 내용이 textarea에 적용된다.
    oEditors.getById[ "ir1" ].exec("UPDATE_CONTENTS_FIELD" , []);

    // 에디터의 내용에 대한 값 검증은 이곳에서
    alert(document.getElementById( "ir1" ).value);

    try {
        elClickedObj.form.submit();
    } catch(e) {}
}
</script>
</head>
<body>
<form action= "admin.do" >

<textarea name= "ir1" id= "ir1" rows= "10" cols= "100" >변상육 짱짱맨</textarea>
<p>
     <input type= "button" onclick= "pasteHTML();" value="본문에 내용 넣기" />
     <input type= "button" onclick= "showHTML();" value="본문 내용 가져오기" />
     <input type= "button" onclick= "submitContents(this);" value="서버로 내용 전송" />
     <input type= "button" onclick= "setDefaultFont();" value="기본 폰트 지정하기 (궁서_24)" />
</p>
</form>
<span style="color: rgb(0, 117, 200);">변상육 짱짱맨</span><span style="color: rgb(0, 117, 200);">?</span>
</body>
<script type= "text/javascript" >
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1" ,
    sSkinURI: "se2/SmartEditor2Skin.html" ,
    fCreator: "createSEditor2"
});
</script>
</html>
