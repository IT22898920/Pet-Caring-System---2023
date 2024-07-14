<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Services</title>
<link rel = "stylesheet" href = "${pageContext.request.contextPath}/styles/styles.css">

<style>

.container ul {
  list-style-type: square;
}

.container li {
	float: none;
}

div {
  font-family: Arial, Helvetica, sans-serif;
}

<!-- CSS tags of the two flip boxes -->	
.flip-box {
  background-color: transparent;
  width: 750px;
  height: 100px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: dodgerblue;
  color: black;
}

.flip-box-back {
  background-color: #FF0000;
  color: white;
  transform: rotateY(180deg);
}

.box {
  position: relative;
  display: inline-block; 
}

.box .text {
  position: absolute;
  z-index: 999;
  margin: 0 auto;
  left: 0;
  right: 0;        
  text-align: center;
  top: 60%; 
  background: rgba(0, 0, 0, 0.8);
  font-family: Arial, sans-serif;
  font-size: 50px;
  color: #fff;
  width: 60%; 
}
		
.zoom {
  padding: 50px;
  background-color: white;
  transition: transform .2s;
  width: 200px;
  height: 200px;
  margin: 0 auto;
}

<!-- separating the content in a box-like structure -->	
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 31%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.columnF {
  float: left;
  width: 40%;
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

.fuel {
  font-family: Helvetica;
  font-size: 22px;
}
</style>
</head>
<body>

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
  <li><a class="active" href="Services.jsp">Services</a></li>
  <li><a href="login.jsp">Login</a></li>
</ul>

<div>
  <div class="box">
    <img src="${pageContext.request.contextPath}/images/logo/dog.jpg" width="1500" height="1000">
    <div class="text">
      <h1>Our Services</h1>
    </div>
  </div>
  
  <table>
    <tr>
      <td>
        <div class="flip-box">
          <div class="flip-box-inner">
            <div class="flip-box-front">
              <h2>Pet Grooming</h2>
            </div>
            <div class="flip-box-back">
              <h2>Pet Grooming</h2>
            </div>
          </div>
        </div>
      </td>
      
      <td>
        <div class="flip-box">
          <div class="flip-box-inner">
            <div class="flip-box-front">
              <h2>Veterinary Services</h2>
            </div>
            <div class="flip-box-back">
              <h2>Veterinary Services</h2>
            </div>
          </div>
        </div>
      </td>
    </tr>
    <tr>
      <td>
        <img src="${pageContext.request.contextPath}/images/logo/groming.png" width=750>
      </td>
      <td>
        <img src="${pageContext.request.contextPath}/images/logo/Veterinary_Services.png" width=750 height=500>
      </td>
    </tr>
  </table>
  
  <br>
  
  <!-- Services description begins from here -->
  
  <h1 style="background-color:powderblue">Pet Grooming</h1>
  
  <div class="row">
    <div class="column">
      <div class="card">
        <img src="${pageContext.request.contextPath}/images/logo/groming.png" alt="Pet Bathing" width="466" height="300">
        <div class="container">
          <h2>Pet Bathing</h2>
          <p class="title">Our groomers are skilled and experienced in providing the best bathing services for your pets.</p>
          <p>Our services include:
            <ul type="square">
              <li>Full-body bathing</li>
              <li>Flea and tick treatment</li>
              <li>Special shampoos and conditioners</li>
              <li>Drying and brushing</li>
              <li>Nail trimming</li>
            </ul>
            And many more...
          </p>
        </div>
      </div>
    </div>
    
    <div class="column">
      <div class="card">
        <img src="${pageContext.request.contextPath}/images/logo/Pet_Styling.png" alt="Pet Styling" width="466" height="300">
        <div class="container">
          <h2>Pet Styling</h2>
          <p class="title">Our groomers are ready to style your pets with the greatest dedication and care.</p>
          <p>Our services include:
            <ul type="square">
              <li>Haircuts and trims</li>
              <li>Breed-specific styling</li>
              <li>Hand-stripping</li>
              <li>Deshedding treatments</li>
              <li>Ear cleaning</li>
            </ul>
            And many more...
          </p>
        </div>
      </div>
    </div>
  
    <div class="column">
      <div class="card">
        <img src="${pageContext.request.contextPath}/images/logo/Pet_Boarding.png" alt="Pet Boarding" width="466" height="300">
        <div class="container">
          <h2>Pet Boarding</h2>
          <p class="title">Our facility provides a safe and comfortable environment for your pets while you're away.</p>
          <p>Our services include:
            <ul type="square">
              <li>Spacious kennels</li>
              <li>Daily exercise and playtime</li>
              <li>Personalized feeding schedules</li>
              <li>Regular health checks</li>
              <li>24/7 supervision</li>
            </ul>
            And many more...
          </p>
        </div>
      </div>
    </div>
  </div>
  
  <h1 style="background-color:powderblue">Veterinary Services</h1>
  <p style="font-size:30">We provide a full range of veterinary services to ensure the health and well-being of your pets.</p>
  
  <div class="row">
    <div class="column">
      <div class="card">
        <img src="${pageContext.request.contextPath}/images/logo/Routine_Checkups.png" alt="Routine Checkups" width="466" height="300">
        <div class="container">
          <h2>Routine Checkups</h2>
          <p class="title">Our veterinarians provide comprehensive health checkups for your pets.</p>
          <p>Our services include:
            <ul type="square">
              <li>Annual exams</li>
              <li>Vaccinations</li>
              <li>Dental care</li>
              <li>Parasite prevention</li>
              <li>Health certificates</li>
            </ul>
            And many more...
          </p>
        </div>
      </div>
    </div>
    
    <div class="column">
      <div class="card">
        <img src="${pageContext.request.contextPath}/images/logo/emergency.png" alt="Emergency Services" width="466" height="300">
        <div class="container">
          <h2>Emergency Services</h2>
          <p class="title">We are equipped to handle any pet emergency 24/7.</p>
          <p>Our services include:
            <ul type="square">
              <li>Critical care</li>
              <li>Surgery</li>
              <li>Diagnostics</li>
              <li>IV fluid therapy</li>
              <li>Pain management</li>
            </ul>
            And many more...
          </p>
        </div>
      </div>
    </div>
  </div>

  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
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
