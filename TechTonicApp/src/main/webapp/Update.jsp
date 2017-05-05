<%@page import="java.sql.*"%>
 <%@page import="java.io.PrintWriter"%>
<%
String d[] =request.getParameterValues("id1");
if(d !=null) {
for(int i=0;i<d.length;i++) {
out.println(d[i]);
}}
String name[] =request.getParameterValues("id2");
if(name !=null) {
for(int i=0;i<name.length;i++) {
out.println(name[i]);
}
}
String title[] =request.getParameterValues("id3");
if(title !=null) {
for(int i=0;i<title.length;i++) {
out.println(title[i]);
}
}
String tit[] =request.getParameterValues("id4");
if(tit !=null) {
for(int i=0;i<tit.length;i++) {
out.println(name[i]);
}
}
String auth[] =request.getParameterValues("id5");
if(auth !=null) {
for(int i=0;i<auth.length;i++) {
out.println(title[i]);
}}%>
<%


PrintWriter ou=response.getWriter();


try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/techtonicsapp","root", "");
Statement st=null;
st=conn.createStatement();
for(int a=0;a<d.length;a++){
	String b=d[a];
	String c=name[a];
	String e=title[a];
	String f=tit[a];
	String g=auth[a];
	st.executeUpdate("update techtalk set Date='"+c+"',tech_talk_data='"+e+"',Description='"+f+"',Presontor='"+g+"' where id='"+b+"';");
	}
}
catch(Exception e){
System.out.println(e);
}
response.sendRedirect("WelcomeAdmin.jsp");
%>