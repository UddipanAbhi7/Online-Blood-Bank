<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>New User</title>
</head>
<body style="background-color:#cfe7ee">


<div class="container">
  <h2>Fill your details</h2>
  <form action="AddNewUser" method="post">
    <div class="form-group">
     <label for="name">Name:</label>
		<input type="text" id="name" class="form-control" placeholder="name" name="Name" required="required">	
    </div>
    <div class="form-group">
    	<label for="add">Address:</label>
      <input type="text" id="add" class="form-control" placeholder="address" name="userAddress" required="required">
		
    </div>
    <div class="form-group">
    	<label for="yr">Age:</label>
      <input type="number" id="yr" class="form-control" placeholder="age" name="userAge" required="required">
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
	      <select id="Gender" name="userGroup" class="form-control" required="required">
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
				<input type="text" id="username" class="form-control" name="userName" placeholder="username" required="required">
	</div>
	<div class="form-group">
			<label for="pass">New Password:</label>
			<input type="password" id="pass" class="form-control" name="password" placeholder="password" required="required">
	</div>
    <button type="submit" class="btn btn-success">Add</button>
    <a href="/"><button type="button" class="btn btn-danger">Cancel</button></a>
  </form>
</div>
</body>
</html>