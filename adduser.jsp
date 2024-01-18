<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #FF0000;
}
.style2 {
	color: #0000FF;
	font-weight: bold;
}
.style3 {color: #CCFF00}
-->
</style>
</head>

<body>
<%@ include file="db.jsp" %>
<%@ include file="admintabs.html" %>
<p align="center" class="style1">Add New User</p>
<form id="form1" name="form1" method="post" action="">
  <table width="269" border="1" align="center">
    <tr>
      <td>Enter Username </td>
      <td><input type="text" name="un" /></td>
    </tr>
    <tr>
      <td>Enter Password </td>
      <td><input type="text" name="pw" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit" /></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>

<p>
  <% 
if(request.getParameter("Submit")!=null){
String un=request.getParameter("un");
String pw=request.getParameter("pw");
try{
int x=stmt.executeUpdate("insert into login values('"+un+"','"+pw+"')");
if(x!=0){
%>
    <script>

alert("new User added Successfully");
  </script>
  
  <%

}
}catch(Exception e){
out.print(e);

}

}

 %>
</p>
<p align="center">All Users </p>
<table width="200" border="1" align="center">
  <tr>
    <td><span class="style2">Username</span></td>
    <td><span class="style2">Password</span></td>
  </tr>
  <% 
  rst=stmt.executeQuery("select * from login");
  while(rst.next()){
  
   %>
  <tr bgcolor="#0000FF">
    <td><span class="style3"><%= rst.getString(1) %></span></td>
    <td><span class="style3"><%= rst.getString(2) %></span></td>
  </tr>
  
  <% } %>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
