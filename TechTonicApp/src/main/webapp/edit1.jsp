<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
      <%ResultSet resultset =null;%>
    <%@ page session="true" %>
      <%@ page import="java.sql.*" %>
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
</style><meta charset="utf-8">
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
                        <a class="page-scroll" href="/TechTonicApp/Logout" style="color:#000000" >SignOUT</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<%String id[]= new String[100];
for(int i=0;i<id.length;i++){
id[i]=request.getParameter("check"+i);
//out.println(id[i]);
}
%>
<form name=myname  action="Delete.jsp">

  <center><h2 style="color:#FDFEFE">Atmecs MeetUps</h2></center> 
<table class="table" border="1">
<tr>
<th><center>No</center></th>
<th><center>Date</center></th>
<th><center>TechTalk</center></th>
<th><center>Description</center></th>
<th><center>Presenter</center></th>

</tr>
<%try{

Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techtonicsapp","root", "");
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();
for(int a=0;a<id.length;a++){
rs = st.executeQuery("select * from techtalk where id='"+id[a]+"'");
while(rs.next()){ %>
<tr>
 		<td><center><input type="text" value="<%=rs.getString("id") %>" name="id1"></center></td>
        <td><center><input type="text" value="<%=rs.getString("Date")%>" name="id2"></center></td>
         <td><center><input type="text" value="<%=rs.getString("tech_talk_data") %>" name="id3"></center></td>
        <td><center><input type="text" value="<%=rs.getString("Description")%>" name="id4"></center></td>
        <td><center><input type="text" value="<%=rs.getString("Presontor")%>" name="id5"></center></td>
</tr><%
}
}
}catch(SQLException e){ System.out.println(e.getMessage()); } %>
 <tr>
  
           <td colspan="5"><center><input type="submit" value="Are you Sure?" class="waves-effect waves-light btn"></center></td>
       </tr>
</table>


</form>

</body>
</html>