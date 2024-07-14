<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">
<meta charset="ISO-8859-1">
<title>Make Your Request</title>
</head>
<body id = grad1>

	
	
	
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
	
	
	
	
	

	<%
			String username = request.getParameter("username");
	%>


	<center>
	<h1 class = "cancel">Pet Service Request</h1>
	</center>
	
	<!-- Placing of the images of the provided services. -->
	<center>
	<th>
	<img src="${pageContext.request.contextPath}/images/logo/Routine_Checkups.png"   height="250" width="300"">
	</th>
	
	<th>
	<img src="${pageContext.request.contextPath}/images/logo/Veterinary_Services.png"   height="250" width="300" >
	</th>
	
	<th>
	<img src="${pageContext.request.contextPath}/images/logo/Pet_Boarding.png"   height="250" width="300" >
	</th>
	
	<th>
	<img src="${pageContext.request.contextPath}/images/logo/Pet_Styling.png"   height="250" width="300" >
	</th>
	</center>
	
	<center>
	<h2 class = "deco">Make An Appointment With Us Today!</h2>
	</center>
	
	<!-- Form to make service request -->
	<form class="submitServiceForm" action = "addService" method = "post" >
		Select Appointment Date:       <input type = "date" id = "div1" name = "appDate"  required><br><br><br><br><br>
		Pet Number:               <input type ="text" name = "vehNum"><br><br><br><br>
		Model:<input type ="text" name = "model"><br><br><br><br>
		Types of Colour :
				<select name = "service" class = "form-control" id = div1>
				<option value = "Black">Black</option>
				<option value = "Gray">Gray </option>
				<option value = "Cream">Cream</option>
				<option value = "Brown">Brown</option>
				</select> <br><br><br>
		email:	<input type ="text" name = "email" value = "<%= username %>" readonly><br><br>
	<center>
	<br><br><br><br>
	<button type="submit" class="submitServiceBtn">Make Request</button>
	</center>
	<br><br><br><br>
	
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
	<img src="${pageContext.request.contextPath}/images/cafe.jpg" alt= "pack1 picture" height="250",width="250">
	<h2 class = "cursive">Aromatic Cafeteria</h2>
	</th>
	
	</table>

	
	
	
	
	
	
	
	
	
	
	
	
	<br>
	<br>
	<br>
	<br>
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