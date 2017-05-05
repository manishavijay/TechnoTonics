<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

table {
 border: 1px solid black;

    
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
th {
    background-color: #000000;
    color: white;
}
tr:hover{background-color:#f5f5f5}
img {
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: -1;
}

</style>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<title>Welcome to TechTonic</title>
</head>
<body> 
 <img src="Resources/images/intro-bg.jpg" width="1900" height="890">
 
<!--jQuery References--> 
<script src="http://code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.min.js" type="text/javascript"></script>

<!--Theme-->
<link href="http://cdn.wijmo.com/themes/aristo/jquery-wijmo.css" rel="stylesheet" type="text/css" />

<!--Wijmo Widgets CSS-->
<link href="http://cdn.wijmo.com/jquery.wijmo-pro.all.3.20171.112.min.css" rel="stylesheet" type="text/css" />

<!--Wijmo Widgets JavaScript-->
<script src="http://cdn.wijmo.com/jquery.wijmo-open.all.3.20161.90.min.js" type="text/javascript"></script>
<script src="http://cdn.wijmo.com/jquery.wijmo-pro.all.3.20161.90.min.js" type="text/javascript"></script>
<script src="http://cdn.wijmo.com/interop/wijmo.data.ajax.3.20161.90.js" type="text/javascript"></script>

<!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/TechTonicApp/Logout" style="color:#000000">SignOUT</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
 
   <form action="AdminInsert" method="post">
    <center><h2 style="color:#FDFEFE">Atmecs MeetUps</h2></center> 
       <div class="table-responsive">          
       <table class="table" border="1">
       <thead>
  
     <tr>

<th><center>Date<center></th>
<th><center>TechTalk<center></th>
<th><center>Description<center></th>
<th><center>Presenter<center></th>

</tr>
    </thead>
    <tbody>
      <tr>
      <td><center> <input type="text" id="datepicker" name="Date" /><center></td>
        <td><center><input type="text" name="TechTalk"><center></td>
        <td><center><input type="text" name="Description"><center></td>
        <td><center><input type="text" name="presenter"><center></td>
       
        </tr>
     </tbody>
      <tr>
    <td colspan="4"><center><input type="submit" value="Add" class="waves-effect waves-light btn"></center></td>
  </tr>
        
        
        </tr>
        </table>
        
   </form>
   
   <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>

 <!--  <script type="text/javascript">
    $(document).ready(function () {
        $("#textbox1").wijinputdate(
        {
            placeHolder:'Click for Dates',
            dateFormat: 'yyyy/M/d',
            pickers: {
                list: [
                    {label: '1980/4/8', value: new Date(1980, 3, 8)},
                    {label: '2007/12/25', value: new Date(2007, 11, 25)},
                    {label: 'today', value: new Date()}
                ]
            },
            showTrigger: true
        });
    });
</script> -->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</body>
</html>