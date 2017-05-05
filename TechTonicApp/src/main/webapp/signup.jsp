<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.controller.*"%>
      <%@page import="com.model.*"%>
      <%@page import="com.mvc.bean.*"%>
      <%@page import="com.dbconnect.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>signup page</title>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- CORE CSS-->
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">

<style type="text/css">
html,
body {
    height: 100%;
}
html {
    display: table;
    margin: auto;
}
body {
    display: table-cell;
    vertical-align: middle;
}
.margin {
  margin: 0 !important;
}
</style>
  
</head>

<body class="white">


  <div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
      <form class="login-form" action="SignUp" method="get">
        <div class="row">
          <div class="input-field col s12 center">
          <center>
            <img src="Resources\images\images.jpg" class="img-responsive" alt="loading..." width="104" height="104">
            </center>
            <p class="center login-form-text">AtmecsTechnologies</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
       
          <input id="username" type="text" name="email" class="validate" placeholder="username">
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-communication-email prefix"></i>
            <input id="email" type="text" pattern="[a-z0-9._%+-]+@[atmecs]+\.[a-z]{2,4}$" name="name" class="validate" placeholder="example@atmecs.com" >
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
           <input id="password" type="password" name="pass" class="validate" placeholder="password/8characters">
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
           <center> <input type="submit" value="SignUP"></center>
          </div>
          <div class="input-field col s12">
         <p> <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></p>
            <p class="margin center medium-small sign-up">Already have an account?<a href="Login.jsp">&nbsp;&nbsp;SignIN</a></p>
          </div>
        </div>
      </form>
    </div>
  </div>
    <script type="text/javascript">
function validateform(){  
	var name=document.myform.email.value;  
	var password=document.myform.password.value;  
	  
	if (name==null || name==""){  
	  alert("Name can't be blank");  
	  return false;  
	}else if(password.length<7){  
	  alert("Password must be at least 6 characters long.");  
	  return false;   
	  } 
}
</script>
</body>

</html>