<%@page import="java.time.LocalDate"%>
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
		
		function check(){
			var age=document.getElementById("yr").value;
			if(age<=18)
			{
				prompt("age must be above 18 years");
			}
		}
</script>


<title>Donors List</title>
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

  <h3>Donors:</h3>
                                                                                    
  <div class="table-responsive">          
  <table class="table table-striped table-hover">
    <thead>
      <tr class="success">
        <th>Name</th>
        <th>Address</th>
        <th>Age</th>
        <th>BloodGroup</th>
        <th>Sex</th>
        <th>Date of storage(yyyy-mm-dd)</th>
        <th>
       		 
				  <!-- Trigger the modal with a button -->
				  <center><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">ADD DONOR</button></center> 
			
		</th>
      </tr>
    </thead>
   	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Fill Donor Details</h4>
        </div>
        <form action="addingDonor"  method="post" onsubmit="check()">
        	<div class="modal-body">
							    
							    <div class="form-group">
							     <label for="name">Name:</label>
									<input type="text" id="name" class="form-control" placeholder="name" name="donorName" required="required">	
							    </div>
							    <div class="form-group">
							    	<label for="add">Address:</label>
							      <input type="text" id="add" class="form-control" placeholder="address" name="donorAddress" required="required">
									
							    </div>
							    <div class="form-group">
							    	<label for="yr">Age:</label>
							      <input type="number" id="yr" class="form-control" placeholder="age" min="18" name="donorAge" required="required">
							    </div>
							    <div class="form-group">
							      <label for="Gender">Sex:</label>
								      <select id="Gender" name="donorSex" class="form-control" required="required">
								            <option value="male">Male</option>
								            <option value="female">Female</option>
								            <option value="other">Other</option>
								      </select>
							    </div>
							    <div class="form-group">
							    	<label for="date">Date of storage:</label>
							      <input type="date" id="date" class="form-control" name="donorDate" max=<%=LocalDate.now() %> required="required">
							    </div>
							     <div class="form-group">
							      <label for="Group">Blood Group:</label>
								      <select id="Gender" name="donorGroup" class="form-control" required="required">
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
							  
							
				
	        </div>
				        <div class="modal-footer">
				        	<button type="submit" class="btn btn-success">Add</button>
				          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				        </div>
				        </form>
				      </div>
				      
				    </div>
				  </div>
    <tbody>
      <c:if test="${donors != null}">
      <c:forEach var="listValue" items="${donors}">
            <tr>
            	
		        <td>${listValue.getDonorName()}</td>
		        <td>${listValue.getDonorAddress()}</td>
		        <td>${listValue.getDonorAge()}</td>
		        <td>${listValue.getDonorGroup()}</td>
		        <td>${listValue.getDonorSex()}</td>
		        <td>${listValue.getDonorDate()}</td>
                <td><center><a href="/deleteDonor?donorId=${listValue.getDonorId()}"><button class="btn"><i class="fa fa-trash"></i></button></a></center></td>
            </tr>
      </c:forEach>
     </c:if>
    </tbody>
  </table>
  </div>
  
  </div>
  
  
  
  
  
 
				  
</body>
</html>