<%@ page contentType="text/html; charset=UTF-8" language="java" %>
 
  <%
  	String getname_ses = (String)session.getAttribute("name_ses");
  
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>&#3648;&#3623;&#3655;&#3610;&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;&#3626;&#3640;&#3650;&#3586;&#3607;&#3633;&#3618;</title>
<style type="text/css">
<!--
body {
	background-color: #FFCC66;
}
-->
</style></head>

<body>
<marquee behavior="scroll" scrolldelay="100"><div id="result"></div></marquee>
<table width="1000" align="center">
  <tr>
    <td colspan="5"><img src="images/header.png" width="1082" height="288" /></td>
  </tr>
  <tr>
    <td width="220"><img src="images/but01.png" width="213" height="61" /></td>
    <td width="220"><a href="travel.html"><img src="images/but02.png" width="213" height="61" /></td>
    <td width="220"><img src="images/but03.png" width="213" height="61" /></td>
    <td width="220"><img src="images/but04.png" width="213" height="61" /></td>
    <td width="220"><a href="sec.html"><img src="images/but05.png" width="213" height="61" border="0" /></a></td>
  </tr>
</table>

 <ul class="nav navbar-nav navbar-right">
     <!-- Login form here -->
              <form action="chkLogin.jsp" method="post" >
              	<input type="text" class="form-control" style="margin-bottom: 15px;" id="username" name="username" placeholder="ชื่อผู้ใช้" size="30" required>
              	<input type="password" class="form-control" style="margin-bottom: 15px;" id="password" name="password" placeholder="รหัสผ่าน" size="30" required>
				  <input class="btn btn-block"  style="margin-bottom: 15px;" type="submit" name="submit" value="Login" />
				</form>
            <% if(getname_ses!=null){ %>
            	<li>
                    <a href="#">Hello &nbsp;<%=getname_ses %></a>
                </li>
                <li>
                    <a href="logout.jsp">Logout</a>
                </li>
            <% } else { %>
       <li class="dropdown">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown">Login <strong class="caret"></strong></a>
            <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
              
            </div>
          </li>
          <% } %>
      </ul>
<script>
var xmlhttp = new XMLHttpRequest();//สร้าง object
xmlhttp.onreadystatechange=function(){ //จับ event พอเกิด event ให้เรียก functionไม่มีชื่อ
if(xmlhttp.readyState==4 && xmlhttp.status==200){
document.getElementById("result").innerHTML = xmlhttp.responseText;//ใช่ domเข้าถึง <div>ผ่าน ID=resultโดยต้องการเปลี่ยนค่าที่ <div>
}
}
var url = "loadtxt.jsp";
//เปิด connection
xmlhttp.open("GET",url,true);
xmlhttp.send();

</script>
        
</body>
 
</html>
