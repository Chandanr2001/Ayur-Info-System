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
	background-image: url(images/newcity.jpg);
}
body,td,th {
	color: #000066;
	font-family: Courier New, Courier, monospace;
	font-weight: bold;
	font-size: 18px;
}
.style1 {color: blue;}
table{

 box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
background-image:linear-gradient(grey,white);
border-radius:20px;
border:0;
color:#FFFFFF;
}
.style2 {color: #FFFFFF}

-->
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('input[type="file"]').change(function(e){
            var fileName = e.target.files[0].name;
document.getElementById("txt").value = fileName;
            alert('The file "' + fileName +  '" has been selected.');
        });
    });
</script>
</head>

<body>
<%@ include file="customertabs.html" %>
<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />



<p align="center">Therapy centers</p>



  <% 


try
{


rst=stmt.executeQuery("select * from therapy ");

  
						
  %>
  <p align="center">Center List</span> </p>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
    <td><div align="center" class="style2">center name  </div></td>
    <td><div align="center" class="style2">address </div></td>
    <td><div align="center" class="style2">phone </div></td>
    <td><div align="center" class="style2">Email</div></td>
    <td>Description</td>
  </tr>
  <% 
  while(rst.next()){
  
   %>
  <tr bgcolor="#FFFFFF">
    <td><div align="center"><%= rst.getString(1) %></div></td>
    <td><div align="center"><%= rst.getString(2) %></div></td>
    <td><div align="center"><%= rst.getString(3) %></div></td>
    <td><div align="center"><%= rst.getString(4) %></div></td>
	<td><div align="center"><%= rst.getString(5) %></div></td>
   
  </tr>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
 
 
</body>
</html>
