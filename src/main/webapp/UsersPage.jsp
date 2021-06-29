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
  

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <script>
		function openNav() {
		  document.getElementById("mySidenav").style.width = "250px";
		}
		
		function closeNav() {
		  document.getElementById("mySidenav").style.width = "0";
		}
</script>
<title>Users List</title>
</head>
<body>
<div class="welcome">
	<h1 style="color: white">Welcome ${currentuser}</h1>
</div>

<div id="mySidenav" class="sidenav" style="background-color: #505050">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
  <a href="DonorsPage?currentuser=${currentuser}">Donors</a>
  <a href="UsersPage?currentuser=${currentuser}">Users</a>
  <a href="homePage?currentuser=${currentuser}">My Account</a>
</div>

<span style="font-size:30px;cursor:pointer;color:white" onclick="openNav()">&#9776;</span> 
<div class="container">
		  
<h3>Users:</h3>
                                                                                    
  <div class="table-responsive">          
  <table class="table table-striped table-hover">
    <thead>
      <tr class="success">
        
        <th>Name</th>
        <th>Address</th>
        <th>Age</th>
        <th>BloodGroup</th>
        <th>Sex</th>
      </tr>
    </thead>
    <tbody>
      <c:if test="${usersList  != null}">
      <c:forEach var="listValue" items="${usersList }">
            <tr>
            	
		        <td>${listValue.getUserName()}</td>
		        <td>${listValue.getUserAddress()}</td>
		        <td>${listValue.getUserAge()}</td>
		        <td>${listValue.getUserGroup()}</td>
		        <td>${listValue.getUserSex()}</td>
		        <td><a href="/deleteUser?userId=${listValue.getUserId()}"><button class="btn"><i class="fa fa-trash"></i></button></a></td>
            </tr>
      </c:forEach>
     </c:if>
    </tbody>
  </table>
  </div>
  </div>
  
  
  
</body>
</html>