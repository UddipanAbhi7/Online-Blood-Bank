<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="CSS/homeDesign.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
  
 <script>
		function openNav() {
		  document.getElementById("mySidenav").style.width = "250px";
		}
		
		function closeNav() {
		  document.getElementById("mySidenav").style.width = "0";
		}
		
		function drop()
		{
			 document.getElementById("myDropdown").classList.toggle("show");
		}
</script>


<script type="text/javascript">

$(document).on("click",".drop-name",function(){
	$(".dropdown-menu1").slideToggle();
});

</script>



<title>Home</title>
</head>
<body style="background-image: linear-gradient(to bottom,#0a3835,#28948d);height: 500px;background-repeat: none">

<div class="welcome">
	<h1 style="color: white">Welcome ${currentuser}</h1>
</div>

<div id="mySidenav" class="sidenav" style="background-color: #505050">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
		  <div class="btn-group btn-sidebar1">
				  <a class="drop-name" style="cursor:pointer">Donors<i class="fa fa-caret-down" id="drop-icon" saria-hidden="true"></i></a> 
				  
				  <ul class="dropdown-menu1" role="menu" id="myDropdown" style="background-color: #505050">
				    <li><a href="Apositive?currentuser=${currentuser}&userId=${userId}">A+</a></li>
				    <li><a href="Anegative?currentuser=${currentuser}&userId=${userId}">A-</a></li>
				    <li><a href="Bpositive?currentuser=${currentuser}&userId=${userId}">B+</a></li>
				    <li><a href="Bnegative?currentuser=${currentuser}&userId=${userId}">B-</a></li>
				    <li><a href="ABpositive?currentuser=${currentuser}&userId=${userId}">AB+</a></li>
				    <li><a href="ABnegative?currentuser=${currentuser}&userId=${userId}">AB-</a></li>
				    <li><a href="Opositive?currentuser=${currentuser}&userId=${userId}">O+</a></li>
				    <li><a href="Onegative?currentuser=${currentuser}&userId=${userId}">O-</a></li>
				  </ul>
		  </div>
  <a href="UserAccount?currentuser=${currentuser}&userId=${userId}">My Account</a>
  <a href="userhomePage?currentuser=${currentuser}&userId=${userId}">Home</a>
</div>

<span style="font-size:30px;cursor:pointer;color:white" onclick="openNav()">&#9776;</span>

		
			  <div class="container" style=" margin: auto;width: 50%;">
			  
			 <h1>Online Blood Donation<br>WELCOME THIS IS USER ENTRY</h1>
			 <p>This is a project about online blood bank where the users can log in to see the donors details and the date of storage of blood.
			 Here, the blood are categorized according to the blood group also. Any blood stored for more than 90 days is automatically removed 
			 form the database. This project is done by Uddipan Bhattacharjee using Spring boot and MySql as the database support.</p>
			  
			  
			  </div>
  
  
	
</body>
</html>