<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Delete Profile</title>
	<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>
<body bgcolor=#42d1f5>



	
	
	
	
	<!-- HEADER -->
<div class="headerDiv">
  <div style="float: right; width:75%;">
    <center style="color:yellow; font-size: 25px;">
      <h1>Online Pet Care Service</h1>
      <h1>&</h1>
      <h1>Pet Request Management</h1>
    </center>
  </div>
  <div>
    <img src="${pageContext.request.contextPath}/images/logo/petLogo.png" width=25%/>
  </div>
</div>





	<!-- Navigation Bar -->
	<ul>
		<li><a href="index.jsp">Home</a></li>
		<li><a href="Services.jsp">Services</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li style="float:right;"><a class="logout" href="CustomerLogin.jsp">Logout</a></li>
	</ul>
	<br/>
	<br>
	<br>
	<br>
	
	
	
	
	
	
	<!-- MAIN CONTENT -->
	<div>
	
	
		
	
	





		<%
			String username = request.getParameter("username");
			String name = request.getParameter("name");
			String address = request.getParameter("address");
			String nic = request.getParameter("nic");
			String phone = request.getParameter("phone");
			String password = request.getParameter("password");
		%>
		
		<div class="loginForm" style="width: 50%; background-color: #069cc2; margin: 0 auto;">
			
			<br>
			<br>
			<center>
		
		
			<h1 style="color: white;">Customer Account Delete</h1>
		
			<form action="delete" method="post">
			<table style="width:100%">
				<tr>
					<th>Username (E-mail)</th>
					<td><input type="text" name="username" value="<%= username %>" readonly></td>
				</tr>
				<tr>
					<th>Name</th>
					<td><input type="text" name="name" value="<%= name %>" readonly></td>
				</tr>
				<tr>
				<th>Address</th>
				<td><input type="text" name="address" value="<%= address %>" readonly></td>
			</tr>
			<tr>
				<th>NIC</th>
				<td><input type="text" name="nic" value="<%= nic %>" readonly></td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
			</tr>
			</table>
			<br>
			<input class="loginFormResetBtn" type="submit" name="submit" value="Delete My Account">
			<input class="loginFormLoginBtn" type="button" name="back" value="Back" onClick="history.back()">
			</form>
			
			</center>
			<br>
			<br>
		</div>
	
	
	</div>
	
	
	
	
	
	
	
	
	
	
	<br>
	<br>
	<br>
<!-- FOOTER -->
  <footer class="footer">
    <div class="footer-left">
      <div style='text-align:left;margin: 30px 30px 30px 60px ;'>
        <img src="${pageContext.request.contextPath}/images/logo/petLogo.png" style="width:20%"><br><br>
        <table border="0">
          <tr>
            <td>
              <b>Pet Care Services (Pvt) Ltd </b><br>
              45/1,<br>
              35 Staple Street,<br>
              Colombo,<br>
              Sri Lanka.
            </td>
          </tr>
        </table>
      </div>
    </div>
    <div class="footer-right">
      <br>
      <br>
      <br>
      <br>
      <ul style="background: #d6d6c2;" class="menu simple">
        <li>Tel: +94112785609</li><br>
        <li>&nbsp &nbsp &nbsp &nbsp +94778435689</li>
      </ul>
    </div>
  </footer>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>