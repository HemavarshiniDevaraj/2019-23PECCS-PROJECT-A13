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




<title>Insert title here</title>
</head>
<body>


<h1>Document Request</h1>

<table id="customers">
  <tr>
   <!--  <th>Company</th> -->
    
    <th>Name</th>
 <th>Email</th>
 <th>Patient Id</th>
 <th>Mobile number</th>
    
     
     <th>Address</th>
    
    
    
    
    
    <th>Accept</th>
  <th>Reject</th>






  </tr>

<%
String hoss=session.getAttribute("hoss").toString();
String maill = session.getAttribute("vmail").toString();

Connection con;


con=Connecttodata.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `medicalrecord`.`user` where status='request' ");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
 	String name=rs.getString(14);  
 	
 	rs.getString(1);  
 	
 	rs.getString(2);
 	rs.getString(3);
 	rs.getString(6);
 	rs.getString(7);
 	


%>




  <tr>
    
     <td><%=rs.getString(2) %></td>
     <td><%=rs.getString(3) %></td>
     <td><%=rs.getString(5) %></td>
     <td><%=rs.getString(6) %></td>
      <td><%=rs.getString(7) %></td>
    
     
    
    
    
    <td><%=rs.getString(11) %></td>
    <td><a href= "documentaccept.jsp?id=<%=rs.getString(1) %>">Accept</a></td>
     <td><a href= "documentreject.jsp?id=<%=rs.getString(1) %>">Reject</a></td>
   
   <!--  <td>Germany</td> -->
  </tr>
 <%} %>
</table>




















</body>
</html>