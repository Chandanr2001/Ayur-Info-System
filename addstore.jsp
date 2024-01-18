<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
 body {
	background-image: url(images/t1.jpg);
}
body,td,th {
	color: #993300;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 24px;
}

-->
</style></head>

<body>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<div align="center"><strong> New Shop Registration </strong></div>
<form id="form1" name="form1" method="post" action="addstorecode.jsp" enctype="multipart/form-data">
  <table width="513" border="1" align="center">
    <tr>
      <td width="285"> Shop name </td>
      <td width="212"><input name="s1" type="text"  /></td>
    </tr>
    <tr>
      <td>Address</td>
      <td><input name="s2" type="text"  /></td>
    </tr>
    <tr>
      <td>Shop mobile no. </td>
      <td><input name="s3" type="text"  /></td>
    </tr>
    <tr>
      <td>password</td>
      <td><input name="s4" type="password" /></td>
    </tr>
	 <tr>
      <td>licence image</td>
      <td><input name="s5" type="file" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Register" /></td>
    </tr>
  </table>
</form>
<p>&nbsp;</p>


</body>
</html>
