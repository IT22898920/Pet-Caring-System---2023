<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Pet Item</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/styles.css">
</head>
<body background="${pageContext.request.contextPath}/images/s2.png">


	<!-- HEADER -->
	<div class="headerDiv">
		<div style="float: right; width: 75%;">
			<center style="color: yellow; font-size: 25px;">
				<h1>Online Pet Care Service</h1>
				<h1>&</h1>
				<h1>Pet Request Management</h1>
			</center>
		</div>
		<div>
			<img src="${pageContext.request.contextPath}/images/logo/petLogo.png"
				width=25% />
		</div>
	</div>



	<!-- Navigation Bar -->
	<ul>
		<li><a href="index.jsp">Home</a></li>
		<li><a href="Services.jsp">Services</a></li>
		<li><a href="login.jsp">Login</a></li>
		<li style="float: right;"><a class="logout" href="adminLogin.jsp">Logout</a></li>
	</ul>



	<h1
		style="text-align: center; color: #58d1d1; background-color: #210070; font-family: 'Verdana', Sans-serif; padding-top: 5px; padding-bottom: 5px;">Insert
		Pet Item Details</h1>
	<!-- Form to add a new spare part -->
	<div class="sInsert">
		<br>
		<form action="insertPart" method="post" class="sForm">
			Part ID &nbsp&nbsp&nbsp&nbsp&nbsp : <input type="text" name="partId"><br>
			<br> Category &nbsp&nbsp&nbsp: &nbsp&nbsp&nbsp&nbsp&nbsp<select
				id="category" name="category">
				<option value="Food">Food</option>
				<option value="Toys">Toys</option>
				<option value="Grooming">Grooming</option>
				<option value="Bedding">Bedding</option>
				<option value="Collars & Leashes">Collars & Leashes</option>
				<option value="Health & Wellness">Health & Wellness</option>
				<option value="Clothing">Clothing</option>
				<option value="Training">Training</option>
				<option value="Travel">Travel</option>
				<option value="Cleaning Supplies">Cleaning Supplies</option>
			</select> <br> <br> Part Name : <input type="text" name="partName"><br>
			<br> Quantity &nbsp&nbsp&nbsp: <input type="number" name="qty"><br>
			<br> Price &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <input
				type="number" name="price"><br>
			<br>

			<!-- Button -->
			<input type="submit" name="submit" value="Insert New Record"
				class="simpbutton">
		</form>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- FOOTER -->
	<footer class="footer">
		<div class="footer-left">
			<div style='text-align: left; margin: 30px 30px 30px 60px;'>
				<img
					src="${pageContext.request.contextPath}/images/logo/petLogo.png"
					style="width: 20%"><br>
				<br>
				<table border="0">
					<tr>
						<td><b>Pet Care Services (Pvt) Ltd </b><br> 45/1,<br>
							35 Staple Street,<br> Colombo,<br> Sri Lanka.</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="footer-right">
			<br> <br> <br> <br>
			<ul style="background: #d6d6c2;" class="menu simple">
				<li>Tel: +94112785609</li>
				<br>
				<li>&nbsp &nbsp &nbsp &nbsp +94778435689</li>
			</ul>
		</div>
	</footer>



</body>
</html>