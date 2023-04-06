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
 <link rel="stylesheet" href="css/normalize.css">
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/main.css">
 <style type="text/css">
 
 *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;
}

table {
  max-width: 960px;
  margin: 10px auto;
}

caption {
  font-size: 1.6em;
  font-weight: 400;
  padding: 10px 0;
}

thead th {
  font-weight: 400;
  background: #8a97a0;
  color: #FFF;
}

tr {
  background: #f4f7f8;
  border-bottom: 1px solid #FFF;
  margin-bottom: 5px;
}

tr:nth-child(even) {
  background: #e8eeef;
}

th, td {
  text-align: left;
  padding: 20px;
  font-weight: 300;
}

tfoot tr {
  background: none;
}

tfoot td {
  padding: 10px 2px;
  font-size: 0.8em;
  font-style: italic;
  color: #8a97a0;
}
 
 
 
 
 
 
 
 
 
 
 
 
 </style>
 
 
  </head>
  <body>












  
  
  
  
  
  
  
  
  
    <table>
      <caption>Management Information</caption>
      <thead>
        <tr>
          <th scope="col">Hospital name</th>
          <th scope="col">Hospital id</th>
          <th scope="col">Hospital email</th>
       <th scope="col">Hospital Mobile number</th>
       <th scope="col">Hospital address</th>
       <th scope="col">Hospital birth</th>
       <th scope="col">Hospital experience</th>
       <th scope="col">file name</th>
       <th scope="col">file type</th>
       <th scope="col">file size</th>
       
       <th scope="col">file view</th>
       
      
       <th scope="col">Accept</th>
         <th scope="col">Reject</th>
       
       
        </tr>
      </thead>
    <% 
Connection con;


con=Connecttodata.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `medicalrecord`.`hospitalmanagement` where status='apply' ");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
 	String name=rs.getString(2);  
 	String email= rs.getString(3); 
 	String password=rs.getString(4);
 	String mobilenumber=rs.getString(5);
		String docterid=rs.getString(6);
		String hospitalname=rs.getString(7);
		String hospitalid=rs.getString(8);
		String specialist=rs.getString(9);
	
%>
     
      <tbody>
        <tr>
          <th scope="row"><%=rs.getString(2) %></th>
          <td><%=  rs.getString(3) %></td>
          <td><%=  rs.getString(4) %></td>
      
        <td><%=  rs.getString(5) %></td>
        <td><%=  rs.getString(6) %></td>
        <td><%=  rs.getString(7) %></td>
        <td><%=  rs.getString(8) %></td>
        
        <td><%=  rs.getString(10) %></td>
        <td><%=  rs.getString(11) %></td>
         <td><%=  rs.getString(12) %></td>
         
        
        <td> <a href="fileview.jsp?id=<%=rs.getString(1)%>">
		     <button class="btn btn-Dark" onclick="myFunction()">View</button></a></td>
        
         
         <td>
		     <a href="accept.jsp?id=<%=rs.getString(1)%>">
		     <button class="btn btn-Dark" onclick="myFunction()">ACCEPT</button></a>
	     </td>
	     <td>
		     <a href="reject.jsp?id=<%=rs.getString(1)%>">
		     <button class="btn btn-danger" onclick="myFunction()">REJECT</button></a>
	     </td>
      
      
      
      
        </tr>
        
      
      
      
      
      
      
      
      
   <%  }  %>
      </tbody>
    </table>
    
  </body>
</html>















