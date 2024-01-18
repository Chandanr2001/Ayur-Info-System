<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
</style>
</head>
<body>
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>

<form action="" method="get">
  <div align="center">
  
  <input name="Plants" type="submit" value="Plants" />
   <input name="home" type="submit" value="Home Remedies" />
    <input name="All" type="submit" value="All" />
   <br /><br />
<br />
</div>

 
</form>


<h2 align="center">Products</h2>

<br>
<% if(request.getParameter("Plants")!=null){ %>

<div class="row">
<% 

rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where producttype='plants' ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>" alt="Jane" width="300" height="300" style="width:50%"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
        <p><%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		 <a href="customerlogin.jsp" ><button class="button">Buy</button></a>
		</p>
      </div>
    </div>
  </div>
  
  <% } 
 
  %>
  
  
</div>
<% } %>





<% //----------------------------showall---------------------------------- %>
<br>
<% if(request.getParameter("home")!=null){ %>

<div class="row">
<% 

rst=stmt.executeQuery("select productname,productprice,image,description,productid from product where producttype='Home Remedy' ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>" alt="Jane" width="300" height="300" style="width:50%"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
        <p><%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		 <a href="customerlogin.jsp" ><button class="button">Buy</button></a>
		</p>
      </div>
    </div>
  </div>
  
  <% } 
 
  %>
  
  
</div>
<% } %>



<% //------------------------------------------------------------------------ %>


<% //----------------------------search item name---------------------------------- %>
<br>
<% if(request.getParameter("All")!=null){ %>

<div class="row">
<% 

rst=stmt.executeQuery("select productname,productprice,image,description,productid from product ");
while(rst.next()){


 %>
  <div class="column">
    <div class="card" align="center"><center>
      <img  src="uploads/<%= rst.getString(3) %>" alt="Jane" width="300" height="300" style="width:50%"></center>
      <div class="container" align="center">
        <h3><%= rst.getString(1) %></h3>
		<h3><%= rst.getString(5) %></h3>
       
        <p><%= rst.getString(4) %></p>
        <h3>Rs.<%= rst.getString(2) %></h3>
        <p>
		 <a href="customerlogin.jsp" ><button class="button">Buy</button></a>
		</p>
      </div>
    </div>
  </div>
  
  <% } 
 
  %>
  
  
</div>
<% } %>



<% //------------------------------------------------------------------------ %>


</body>
</html>

