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
.style3 {color: #0000FF}

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
<%@ include file="admintabs.html" %>
<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />



<p align="center">Yoga Details</p>
<div >
<form  method="post" action=""   >
  <table bgcolor="grey" width="637" border="0" align="center" style="border-radius:20px">
    <tr >
      <td width="276"><div align="right" class="style3">Enter Yoga name </div></td>
      <td width="189"><input name="s1" type="text" id="s1"  /></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">Trainer name </div></td>
      <td><input name="s2" type="text" id="s2" /></td>
    </tr>
    
    <tr>
      <td><div align="right" class="style3">Usefullness</div></td>
      <td><input name="s3" type="text" id="s4"   required /></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">Address</div></td>
	 
      <td><input name="s4" type="text" id="s5" required/></td>
    </tr>
    <tr>
      <td><div align="right" class="style3">Description</div></td>
      <td><input name="s5" type="text"  value="" /></td>
    </tr>
    
    <tr>
      <td><span class="style1"></span></td>
      <td><input type="submit" name="Submit" value="Add " /></td>
    </tr>
  </table>
  
</form>
</div>
<% 
if(request.getParameter("Submit")!=null){
try{

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");
String s5=request.getParameter("s5");

int x=stmt.executeUpdate("insert into yoga(name,trainer,usefullness,address,description) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){

out.print("New yoga details added Successfully");
}
}catch(Exception e){
out.print("this is already exist"+e);
}
}
 %>




  <% 


try
{


rst=stmt.executeQuery("select * from yoga ");

  
						
  %>
  <p align="center">Herbals List</span> </p>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
    <td><div align="center" class="style2">Name  </div></td>
    <td><div align="center" class="style2">trainer name  </div></td>
    <td><div align="center" class="style2">Usefullness</div></td>
    <td><div align="center" class="style2">Address </div></td>
    <td><span class="style2">Description</span></td>
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
