<%@ page language="java" pageEncoding="utf-8"%> 
<%@ page contentType="text/html;charset=utf-8"%>
<% 
 request.setCharacterEncoding("UTF-8"); 
 response.setCharacterEncoding("UTF-8"); 
 response.setContentType("text/html; charset=UTF-8"); 
%>  

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>${user1.name} ${user1.sex} ${user1.tel} ${user1.address} <br><br>
<!--  -->  <form  method="post"  action="showUser2.jsp"> <!--  action="${pageContext.request.contextPath}/login.action" -->
ID :<input type = "text" name="id" value="0"/> 
姓名 :<input type = "text" name="name" value="aaa"/> 
性别 :<input type = "text" name="sex" value="女"/> 
电话 :<input type = "text" name="tell" value="123123123"/> 
地址 :<input type = "text" name="address" value="北京大学"/> 
</br> <input type = "submit" value="提交"/> </form>

</body>
</html>