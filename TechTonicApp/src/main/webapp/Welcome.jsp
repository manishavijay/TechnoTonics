<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%ResultSet resultset =null;%>
    <%@ page session="true" %>
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>

    	
      <!--  String name = session.getAttribute("name");-->  
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
<div class="container">
<form action="AcceptServlet" method="get">
   <%
//String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "techtonicsapp";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
   
  <h2 style="color:#FDFEFE"><center>Atmecs Meetups</center></h2>                                                                                  
  <div class="table-responsive">          
  <table class="table" border="1">

    <thead>
  
   
      <tr>
        <th><center></>Select</center></th>
        <th><center>NO</center></th>
        <th><center>Date</center></th>
        <th><center>TechTalk</center></th>
        <th><center>Description</center></th>
        <th><center>Presentor</center></th>
        
         </tr>
    </thead>
    <tbody>
       <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM techtalk";

resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
      
        <tr>
        <td><center><input type="checkbox" name="check<%=i%>" value="<%= resultSet.getString("id") %>"></center></td>
        <td><center><%=resultSet.getString("id") %></center></td>
        <td><center><%=resultSet.getString("Date") %></center></td>
        <td><center><%=resultSet.getString("tech_talk_data") %></center></td>
        <td><center><%=resultSet.getString("Description") %></center></td>
        <td><center><%=resultSet.getString("Presontor") %></center></td>
       
       
        
      </tr>
     </tbody>
    <% i++;
}

} catch (Exception e) {
e.printStackTrace();
}
%><tr>
  
  
          <td colspan="6"><center><input type="submit" value="Accept" name="Accept" class="waves-effect waves-light btn"></center></td>
    
       </tr>
  </table>
  </div>
  </form>
</div>
</body>
</html>