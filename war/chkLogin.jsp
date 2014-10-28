<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<% 
	
	String strUsername = request.getParameter("username");
	String strPassword = request.getParameter("password");
	
	//Query DB
	String dbUsername = "admin";
	String dbPassword = "55555";
	String dbName = "NopSeem";
	
	if(strUsername.equals(dbUsername) && strPassword.equals(dbPassword)){
		out.println("Login successfully");
		session.setAttribute("username_ses",dbUsername);
		session.setAttribute("name_ses",dbName);
		response.sendRedirect("index.jsp");
	}
	else{
		out.println("ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง! ");
		
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<a href=index.jsp>Please login again</a>
</body>
</html>