<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbcon.Connecttodata"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%
String idd=request.getParameter("id");
Connection con;


con=Connecttodata.create();

Statement st = con.createStatement();
ResultSet rs= st.executeQuery("SELECT * FROM medicalrecord.prescription where id='"+idd+"'");


while(rs.next()){

	

	
	
%> 



 <embed  src="local/<%=rs.getString(15) %>" height="100%" width="100%" >
 



<%} %>
</body>
</html>