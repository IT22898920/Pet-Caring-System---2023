<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Edit My Request</title>
	<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
</head>
<body  id = grad1>
	
	
	
<!--  HEADER -->
	<div class="headerDiv">
	
		<div style="float: right; width:75%;">
			<center style="color:yellow; font-size: 25px;"><h1>Online Pet Care Service</h1>
				<h1>&</h1>
				<h1>Pet Requset Management</h1></center>
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- All details are fetched and passed from the form(insert) into relevant variables! -->

	<%
		String serviceID = request.getParameter("serviceID");
		String serviceName = request.getParameter("serviceName");
		String petNum = request.getParameter("vehicleNum");
		String model = request.getParameter("model");
		String date = request.getParameter("date");
		String email = request.getParameter("email");
	%>
	
	
	<center>
	<h1 class = "cursive">Highest Quality Of Service Offered!</h1>
	</center>
		<img src="${pageContext.request.contextPath}/images/logo/waking.png"   height="700" width="1500"">
		<center>
	<h1 class = deco>Customer Service Request Update</h1>
	</center>
	
	<!--  form showing whatever the details that needs to be updated.-->
	<form action="updateCusReq" method="post" class = "updateReqForm">
	<table>
		<tr>
		<!-- We need to fetch the original details of the insert form, so that customer knows what to update.-->
			<td>Service Request ID:</td>
			<!-- have to make sure that the service id cannot be changed by the customer, because it is set to auto increment. use the read only function to avoid customers bei0ng able to access and edit it. -->
			<td><input type="text" name="serviceID" value="<%= serviceID %>" readonly></td>
			<!-- the passed parameters in the serviceacc.jsp, should be caught here. -->
			<!-- Go to service account.jsp ,has a for each loop -->
			<!-- use the greater than sin with the modulus sign to call java variable in html or jsp file. -->
			<!--the original values should be there now-->
			
		</tr>
		<tr>
			<td>Select Appointment Date:</td>
			<td><input type="date" name="expDate" value="<%= date %>"></td>
		</tr>
		<tr>
			<td>Pet Number:</td>
			<td><input type="text" name="vehNum" value="<%= petNum %>"></td>
		</tr>
		<tr>
		<td>Model:</td>
		<td><input type="text" name="model" value="<%= model %>"></td>
	</tr>
	<tr>
		<td>Colour Type:</td>
		<td>
		<select name="service" value="<%= serviceName %>">
		<option value = "Black">Black</option>
				<option value = "Gray">Gray </option>
				<option value = "Cream">Cream</option>
				<option value = "Brown">Brown</option>
		</select>
		</td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="email" value="<%= email %>" readonly></td>
	</tr>	
	</table>
	<br>
	<input type="submit" name="submit" value="Update Request" class = "updateServiceBtn">
	</form>
	
	
	
	
	<br><br><br><br><br>
	
	<center><h2 class = "cursive">FOR OUR VALUABLE CUSTOMERS:</h2><br></center>
	<table border="1" , align= "center">
	<th>
	<img src="${pageContext.request.contextPath}/images/map.jpg" alt= "pack1 picture" height="250",width="250">
	<h2 class = "cursive">Tracking Is Made Easier</h1>
	</p>
	<th>
	
	<th>
	<img src="${pageContext.request.contextPath}/images/wifi.jpg" alt= "pack1 picture" height="250",width="250">
	<h2 class = "cursive">Enjoy Free Wifi</h1>
	</h2>
	</th>
	
	<th>
	<img src="${pageContext.request.contextPath}/images/logo/enjoy.png" alt= "pack1 picture" height="250",width="250">
	<h2 class = "cursive">Enjoy Pets</h2>
	</th>
	
	</table>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- FOOTER -->
	<footer class="footer">
		<div class="footer-left">
		<div style ='text-align:left;margin: 30px 30px 30px 60px ;'>
		<img src="${pageContext.request.contextPath}/images/logo/petLogo.png" style="width:20%"><br><br>
		<table border="0">
				<tr><td>
					<b>Pet Care Services (Pvt) Ltd </b><br>
					45/1,<br>
					35 Staple Street,<br>
					Colombo,<br>
					Sri Lanka.</td>
					
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