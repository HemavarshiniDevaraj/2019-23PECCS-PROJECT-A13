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
</head>
<body>

 <% 

 String s =session.getAttribute("doctorid").toString();
 String s1 =session.getAttribute("specialist").toString();
 
 
 String id = request.getParameter("id").toString();
 
 
 
 Connection con;


con=Connecttodata.create();
PreparedStatement ps=con.prepareStatement("UPDATE `medicalrecord`.`appointmentform` SET status='Approved',doctorid='"+s+"',doctorspecialist='"+s1+"' where status='appointment' and id='"+id+"' ");

ps.executeUpdate();
response.sendRedirect("Appointmentview.jsp");
%>


<% %>







</body>
</html>