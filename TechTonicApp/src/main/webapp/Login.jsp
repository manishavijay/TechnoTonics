	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Login form using Material Design - Demo by W3lessons</title>
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

<body style="background-color:black;">
<div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
      <form name="myform" class="login-form" onsubmit="return validateform()" action="Login" method="get">
        <div class="row">
          <div class="input-field col s12 center">
            <img src="Resources\images\images.jpg" class="img-responsive" alt="loading..." width="104" height="104">
            <p class="center login-form-text">AtmecsTechnologies</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-communication-email prefix"></i>
            <input  id="email" type="email" pattern="[a-z0-9._%+-]+@[atmecs]+\.[a-z]{2,4}$" name="email" placeholder="email@atmecs.com">
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <input id="password" type="password"  name="password" placeholder="password/8characters">
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
          <center> <input type="submit" value="SignIN"></center>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s6 m6 l6">
            <center><a href="signup.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OR</a></center>
          </div>          
        </div>
        <div class="row">
          <div class="input-field col s6 m6 l6">
            <center><a href="signup.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SignUP</a></center>
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