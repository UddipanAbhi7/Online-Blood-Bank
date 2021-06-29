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

<script type="text/javascript">

$(document).on("click",".drop-name",function(){
	$(".dropdown-menu1").slideToggle();
});

</script>

<title>My Account</title>
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
			  
			 <table>
			 	<tbody>
			 		<tr>
			 			<td><b>Name:</b></td>
			 			<td>${u.getName()}</td>
		 			</tr>
		 			<tr>
			 			<td><b>Address:</b></td>
			 			<td>${u.getUserAddress()}</td>
		 			</tr>
		 			
		 			<tr>
			 			<td><b>Age:</b></td>
			 			<td>${u.getUserAge()}</td>
		 			</tr>
		 			<tr>
			 			<td><b>Sex:</b></td>
			 			<td>${u.getUserSex()}</td>
		 			</tr>
		 			<tr>
			 			<td><b>Blood Group:</b></td>
			 			<td>${u.getUserGroup()}</td>
		 			</tr>
		 			<tr>
			 			<td><b>Username:</b></td>
			 			<td>${u.getUserName()}</td>
		 			</tr>
		 			
			 	</tbody>
			 </table>
			  
			  <center><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Edit Info</button></center> 
			  <br>
			  </div>
  
  
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Edit Info:</h4>
        </div>
        <form action="editUserInfo" method="post">
        <div class="modal-body">
           
				      <div class="form-group">
				     <label for="name">Name:</label>
						<input type="text" id="name" class="form-control" value="${u.getName()}" name="name" required="required">	
				    </div>
				    <input type="hidden" value="${userId}" name="userId">
				    <div class="form-group">
				    	<label for="add">Address:</label>
				      <input type="text" id="add" class="form-control" value="${u.getUserAddress()}" name="userAddress" required="required">
						
				    </div>
				    <div class="form-group">
				    	<label for="yr">Age:</label>
				      <input type="number" id="yr" class="form-control" min="18" value="${u.getUserAge()}" name="userAge" required="required">
				    </div>
				    <div class="form-group">
				      <label for="Gender">Sex:</label>
					      <select id="Gender" name="userSex" class="form-control" required="required">
					            <option value="male">Male</option>
					            
					            <option value="female">Female</option>
					            <option value="other">Other</option>
					      </select>
				    </div>
				     <div class="form-group">
				      <label for="Group">Blood Group:</label>
					      <select id="Group" name="userGroup" class="form-control" required="required">
					      		
					            <option value="A+">A+</option>
					            <option value="A-">A-</option>
					            <option value="B+">B+</option>
					            <option value="B-">B-</option>
					            <option value="AB+">AB+</option>
					            <option value="AB-">AB-</option>
					            <option value="O+">O+</option>
					            <option value="O-">O-</option>
					      </select>
				    </div>
				    <div class="form-group">
					    <label for="username">Username:</label>
								<input type="text" id="username" class="form-control" name="userName" value="${u.getUserName()}" required="required">
					</div>
					<div class="form-group">
								<label for="pass">New Password:</label>
								<input type="password" id="pass" class="form-control" name="password" placeholder="enter new password" required="required">
					</div>

        </div>
        <div class="modal-footer">
        <button type="submit" class="btn btn-success">Change</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
        </form>
      </div>
      
    </div>
  </div>
  
  
</body>
</html>