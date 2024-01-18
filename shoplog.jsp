<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/style.css">


<title>Untitled Document</title>
<style>
input[type=text], select {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:80%;
  margin-right:0%;
}
.style1 {color: #FFFFFF}
.style2 {color: #000033; }
</style>
<body>
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>

<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("shopname");
String s2=request.getParameter("password");

try{

rst=stmt.executeQuery("select * from shop where shopname='"+s1+"' and password='"+s2+"'");
if(rst.next()){

%>
<script>

alert("login Successfull");
window.open("shoptabs.html","_self");
</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}

}catch(Exception e){
out.print(e);

}



}
 %>
 
 
 
 
 
  <table   width="1185" height="426" border="0" align="center">
  <tr>
   <td width="490" height="416"><div class="w3-content w3-section" style="max-width:500px"  > <img class="mySlides w3-animate-top" src="images/1.jpg" style="width:100%" /> <img class="mySlides w3-animate-bottom" src="images/2.jpg" style="width:100%" /> <img class="mySlides w3-animate-top" src="images/3.jpg" style="width:100%" /> </div></td>
    <td width="596"><center>
 <div align="center" style="padding-left:10%; padding-right:10%; margin-left:5%; margin-right:5%;">

<h3 align="center" style="color:#CCCCCC">Shop Login </h3>
  <form id="form1" name="form1" method="post" action="">
							  <table style="background:#CCCCCC; border-radius:20px;" width="704" border="0" align="center">
								<tr>
								  <td width="182"><div align="right" class="style2">Shopname</div></td>
								  <td width="512"><input name="shopname" type="text" /></td>
								</tr>
								<tr>
								  <td><div align="right" class="style2">Password </div></td>
								  <td><div class="password-show-card">
		<input type="password" class="input-control"  name="password" >
		<i class="fa fa-eye password-show"></i>
		<!-- <i class="fa fa-eye-slash"></i> -->
	</div>
								  </td>
								</tr>
								<tr>
								 
								  <td><div align="right"><span class="style1"><span class="style2"></span></span></div></td>
								  <td><input type="submit" name="Submit" value="Login" /><br />

								 <a style="color:#000099;" href="AddShop.jsp" >New Customer Registration</a><br />

								 </td>
								</tr>
								
    </table>
							  <div align="center"></div>
  </form>            
</div>
</center></td>
   
  </tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

 
 
 
 
 
 <script src="js/jquery-latest.min.js"></script>
<script>
	$(function(){
		$(".password-show").click(function(event) {
			$(this).toggleClass('fa-eye-slash');
			var x = $(".input-control").attr("type"); //getting attribute in variable
			if (x == "password") 
			{
				$(".input-control").attr("type","text"); //setting attribute on condition
			}
			else
			{
				$(".input-control").attr("type","password");
			}
		});
	})
</script>
 
 
 
 <script src="js/jquery-latest.min.js"></script>
<script>
	$(function(){
		$(".password-show").click(function(event) {
			$(this).toggleClass('fa-eye-slash');
			var x = $(".input-control").attr("type"); //getting attribute in variable
			if (x == "password") 
			{
				$(".input-control").attr("type","text"); //setting attribute on condition
			}
			else
			{
				$(".input-control").attr("type","password");
			}
		});
	})
</script>
</body>

</html>
