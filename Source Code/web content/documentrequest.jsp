<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbcon.Connecttodata"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>



</head>
<body>
<h1>Document Request view</h1>

<table id="customers">
  <tr>
   <!--  <th>Company</th> -->
    
    <th>patient name</th>
 <th>patient email</th>
 <th>patient id</th>
 <th>Address</th>
    <th>Doctor id</th>
    <th>Hospital name</th>
     <th>Hospital id</th>
    <th>Doctor name</th>
    <th>Approved</th>
 






  </tr>

<%

String ss=  session.getAttribute("hospitalname").toString();
String ssd=  session.getAttribute("specialist").toString();

Connection con;


con=Connecttodata.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `medicalrecord`.`prescription` where status= 'Request' and hospitalname='"+ss+"' and doctorspecialist='"+ssd+"' ");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
 	String name=rs.getString(14);  
 	
 	rs.getString(1);  
 	










%>






  <tr>
    
     <td><%=rs.getString(2) %></td>
     <td><%=rs.getString(3) %></td>
     <td><%=rs.getString(6) %></td>
     <td><%=rs.getString(7) %></td>
    
    <td><%=rs.getString(9) %></td>
    <td><%=rs.getString(11) %></td>
    <td><%=rs.getString(12) %></td>
     <td><%=rs.getString(21) %></td>
    
    
    
    <td><a href= "approvedocument.jsp?id=<%=rs.getString(1) %>">Approved</a></td>
   <!--  <td>Germany</td> -->
  
 
  </tr>
<%} %>
</table>









</body>
</html>