<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/join_style.css" />
<script>
function checkValue(){
	inputForm=eval("document.loginInfo");
		
	if(!inputForm.id.value){
	alert("아이디 입력 필요");
	inputForm.id.focus();
	return false;
	}
	if(!inputForm.password.value){
		alert("패스워드 입력 필요");
		inputForm.password.focus();
		return false;
		}
}
function goJoinForm(){
	location.href="../joinus/join.jsp";
}
</script>
</head>
<body>
<h3>loginForm</h3>
<div id="wrap">
<form action="loginProc.jsp" name="loginInfo" method="post" onsubmit="return checkValue()">
<!--이미지 추가  -->
<img src="../img/welcome.jpg" id="wel_img" />
<br /><br />
<table>
<tr>
	<td bgcolor="skyblue">아이디</td>
	<td><input type="text" name="id" maxlength="50" /> </td>
</tr>
<tr>
	<td bgcolor="skyblue">비밀번호</td>
	<td><input type="password" name="password" maxlength="50" /></td>
</tr>
</table>
<br />
<input type="submit" value="login" />
<input type="button" value="join" onclick="gojoinForm()" />
</form>
<%
String msg=request.getParameter("msg");
if(msg!=null && msg.equals("0")){
	out.println("<br");
	out.println("<font color='red' size='5'>비밀번호확인</font>");
}else if(msg!=null && msg.equals("-1")){
	out.println("<br>");
	out.println("<font color='red' size='5'>아이디확인</font>");
}
%>

</div>
</body>
</html>