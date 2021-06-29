<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import ="java.util.ArrayList"%>
    <%@ page import="com.Project.BloodDonate.Model.DonorDet" %>
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
<title>Home</title>
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

		
			  <div class="container" style=" margin: auto;width: 50%;">
			  
			 <h1>Online Blood Donation</h1>
			 <p>This is a project about online blood bank where the users can log in to see the donors details and the date of storage of blood.
			 Here, the blood are categorized according to the blood group also. Any blood stored for more than 90 days is automatically removed 
			 form the database. This project is done by Uddipan Bhattacharjee using Spring boot and MySql as the database support.</p>
			  
			  
			  <center><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Change Password</button></center> 
			  <br>
			  </div>
  
  
  
  
  
  
  
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">PassWord Change:</h4>
        </div>
        <form action="changePass"  method="post">
        <div class="modal-body">
           
				      <div class="modal-body">
				        <div class="form-group">
				        
							    <label for="username">Username:</label>
										<input type="text" id="username" class="form-control" name="username" value="${currentuser}" required="required">
						</div>
						<div class="form-group">
								<label for="pass">New Password:</label>
								<input type="password" id="pass" class="form-control" name="password" placeholder="enter new password" required="required">
						</div>
							  
							
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