<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="CSS/loginDesign.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<body>






	   <div class="sidenav">
         <div class="login-main-text">
            
         </div>
      </div>
      <div class="main">
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
            <h2>ONLINE BLOOD BANK<br>LOGIN</h2>
            <p>Login or register from here to access.</p>
               <form action="verify" method="post">
                 <div class="form-group input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
						<input type="text"class="form-control" id="email" placeholder="username" name="username" required="required">
				</div>
                 <div class="form-group input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
						<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password" required="required">
				</div>
                  <button type="submit" class="btn btn-danger">Login</button>
                  
               </form><br>
               <a href="NewUser"><button type="Submit" class="btn btn-secondary">Sign up?</button></a>
               
            </div>
            <br>
		${errorMessage}
         </div>
      </div>
      

</body>
</html>