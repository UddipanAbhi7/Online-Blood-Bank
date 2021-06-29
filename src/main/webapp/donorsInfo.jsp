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


<title>Donors</title>
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
       </tr>
    </thead>
         <tbody>
         <c:if test="${donorList.size() == 0 }">
         	<tr>
            	
		        <td colspan="6"><center>No Donors Found</center></td>
		        
            </tr>
         	
         	
         </c:if>
      <c:if test="${donorList != null}">
      <c:forEach var="listValue" items="${donorList}">
            <tr>
            	
		        <td>${listValue.getDonorName()}</td>
		        <td>${listValue.getDonorAddress()}</td>
		        <td>${listValue.getDonorAge()}</td>
		        <td>${listValue.getDonorGroup()}</td>
		        <td>${listValue.getDonorSex()}</td>
		        <td>${listValue.getDonorDate()}</td>
            </tr>
      </c:forEach>
     </c:if>
    </tbody>
  </table>
  </div>
  
  </div>
        
        
        
        
	
</body>
</html>