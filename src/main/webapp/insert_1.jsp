<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%> 
<%@ page contentType="text/html;charset=utf-8"%> 
<% 
request.setCharacterEncoding("UTF-8"); 
response.setCharacterEncoding("UTF-8"); 
response.setContentType("text/html; charset=utf-8"); 
%> 
<htnl> 
<head> 
<title>往数据库插入数据</title> 
</head> 
<body> 
<% 
String tel=request.getParameter("tel"); //从表单获得 
String pwd=request.getParameter("pwd"); //从表单获得 
Boolean flag=true;

try 
{ 
/** 连接数据库参数 **/ 
String driverName = "com.mysql.jdbc.Driver"; //驱动名称 
String DBUser = "root"; //mysql用户名 
String DBPasswd = "123456"; //mysql密码 
String DBName = "ehealth"; //数据库名 

String connUrl = "jdbc:mysql://localhost/" + DBName + "?user=" + DBUser + "&password=" + DBPasswd; 
Class.forName(driverName).newInstance(); 
Connection conn = DriverManager.getConnection(connUrl); 
Statement stmt = conn.createStatement(); 
stmt.executeQuery("SET NAMES UTF8"); 
 
String insert_sql = "insert into user(tel,pwd) values('" + tel + "','" + pwd + "')"; 
String query_sql = "select * from user"; 
if("null".equals(tel) || "".equals(tel) ||"null".equals(pwd) || "".equals(pwd))
 {
 //out.print("在这里可以对字段进行处理，此时tel为空");
 flag=false;
 }
if(flag){
try { 
stmt.execute(insert_sql); 
}catch(Exception e) { 
e.printStackTrace(); 
} }
try { 
ResultSet rs = stmt.executeQuery(query_sql); 
if(rs.next() && flag) { 
 response.sendRedirect("doctorIndex.jsp");
} else{
	 out.print("<script>alert('注册信息不能为空！');window.location.href='register.jsp'</script>");
}
}catch(Exception e) { 
e.printStackTrace(); 
} 
//rs.close(); 
stmt.close(); 
conn.close(); 
}catch (Exception e) { 
e.printStackTrace(); 
} 
%> 
</br> 

</body> 
</html> 