<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ include file="db.jsp" %>
<% 

MultipartRequest m = new MultipartRequest(request, "D:/tomcat Installed Dont delete it/Tomcat 5.5/webapps/GFGC_Ayurveda/uploads");
String s1=m.getParameter("s1");
String s2=m.getParameter("s2");
String s3=m.getParameter("s3");
String s4=m.getParameter("s4");
String s5=m.getOriginalFileName("s5");

try{


int x=stmt.executeUpdate("insert into stores(storename,address,storemobileno,password,image) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
%>
<script>

alert("successfully uploaded");

window.open("addstore.jsp","_self");
</script>
<%
}

}catch(Exception e){
out.println("this store already exist");
}

 %>


