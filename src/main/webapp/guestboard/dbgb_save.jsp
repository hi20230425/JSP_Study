<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 
	dbgb_write.html ==============> 에서 form 에서 넘어오는 값을 받아서 DB에 저장 하는 파일 

 -->  
 
 <%@ page import = "java.sql.*,java.util.*" %>
 
 <!--  클라이언트에서 넘어오는 한글이 깨어지지 않게 처리  -->
 <% request.setCharacterEncoding("UTF-8");  %>
 
 
 <!--  dbgb_write.html 폼에서 넘어오는 변수의 값을 받아서 새로운 변수에 할당.  -->
 <%
 	String na = request.getParameter("name"); 
 	String em = request.getParameter("email");
 	String sub = request.getParameter("subject");
 	String cont = request.getParameter("content");
 	String ymd = (new java.util.Date()).toLocaleString();    // 현재 시스템의 날짜를 생성해서 String 로 변환 

 %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3> 클라이언트에서 넘어오는 변수를 받아서 출력 </h3>
	<div> <%= na %></div>
	<div> <%= em %></div>
	<div> <%= sub %></div>
	<div> <%= cont %></div>
	<div> <%= ymd %></div>




</body>
</html>