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
</script>
<title>Donors</title>
</head>
<body style="background-image: linear-gradient(to bottom,#0a3835,#28948d);height: 500px;background-repeat: none">

<div class="welcome">
	<h1 style="color: white">Welcome ${currentuser}</h1>
</div>

<div id="mySidenav" class="sidenav" style="background-color: #505050">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
  <a href="BloodInfo?currentuser=${currentuser}&userId=${userId}">Donors</a>
  <a href="UserAccount?currentuser=${currentuser}&userId=${userId}">My Account</a>
  <a href="userhomePage?currentuser=${currentuser}&userId=${userId}">Home</a>
</div>

<span style="font-size:30px;cursor:pointer;color:white" onclick="openNav()">&#9776;</span>

<div class="container">

<form action="Apositive" method="post">
		<button type="submit"><h2>A+ blood</h2></button>
	</form>
	<form action="Anegative" method="post">
		<button type="submit"><h2>A- blood</h2></button>
	</form>
	<form action="Bpositive" method="post">
		<button type="submit"><h2>B+ blood</h2></button>
	</form>
	<form action="Anegative" method="post">
		<button type="submit"><h2>B- blood</h2></button>
	</form>
	<form action="ABpositive" method="post">
		<button type="submit"><h2>AB+ blood</h2></button>
	</form>
	<form action="ABnegative" method="post">
		<button type="submit"><h2>AB- blood</h2></button>
	</form>
	<form action="Opositive" method="post">
		<button type="submit"><h2>O+ blood</h2></button>
	</form>
	<form action="Onegative" method="post">
		<button type="submit"><h2>O- blood</h2></button>
	</form>

</div>
</body>
</html>