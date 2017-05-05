<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>TestPortal</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="Resources/css/style.css">

  
</head>

<body>
  
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>ATMECS</h1><span>Pen <i class='fa fa-code'></i> by <a href='http://andytran.me'>VK</a></span>
</div>
<div class="rerun"><a href="">Reset</a></div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form action="Login" onsubmit="return validateform()" method="get" id="form1">
      <div class="input-container">
        <input type="#{type}" id="#{label}" name="email" pattern="[a-z0-9._%+-]+@[atmecs]+\.[a-z]{2,4}$" required="required"/>
        <label for="#{label}">example@atmecs.com</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="#{label}" name="password" required="required"/>
        <label for="#{label}">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button type="submit" form="form1" value="Submit"><span>Go</span></button>
      </div>
      <input type="submit" id="searchsubmit">
      <div class="footer"><a href="#">Forgot your password?</a></div>
    </form>
    
  </div>
  <div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">Register
      <div class="close"></div>
    </h1>
    <form action="SignUp" method="get" id="form2">
      <div class="input-container">
        <input type="#{type}" id="#{label}" name="email" class="validate" pattern="[a-z0-9._%+-]+@[atmecs]+\.[a-z]{2,4}$" required="required"/>
        <label for="#{label}">example@atmecs.com</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="#{type}" id="#{label}" name="name" class="validate" required="required"/>
        <label for="#{label}">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="#{label}" name="pass" class="validate" required="required"/>
        <label for="#{label}">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button type="submit" form="form1" value="Submit" ><span>Next</span></button>
      </div>
       <input type="submit" id="searchsubmit">
    </form>
  </div>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="Resources/js/index.js"></script>
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
