
<%@page import="dbcon.Connecttodata"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<!DOCTYPE html>

<html>

<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   <title>Form</title>

   <style>

    body {

    background-color: #8d99ae;

    text-align: center;

    color: white;

    font-family: Arial, Helvetica, sans-serif;

    }

    table {

    border-collapse: separate;

    border-spacing: 35px 0;

    }

    td {

    padding: 10px 0;

    }
.hi select{
position: absolute;left: 585px;top: 375px;

}
 
 
   
   
   </style>

</head>

<body>
<% 













String name= request.getParameter("name");
String id= request.getParameter("id");
String email= request.getParameter("email");
String gender= request.getParameter("gender");
String age= request.getParameter("age");
String patientid= request.getParameter("patientid");
String address= request.getParameter("address");
String bloodgroup= request.getParameter("bloodgroup");
String doctorid= request.getParameter("doctorid");
String doctorspecialist= request.getParameter("doctorspecialist");
String hospitalname =session.getAttribute("hospitalname").toString();
String hospitalid =session.getAttribute("hospitalid").toString();
String description= request.getParameter("description");
String doctorname =session.getAttribute("doctorname").toString();
 session.setAttribute("idd", id);
 
 
 
 
 
 
 
 
 
 
 
 
 %>
 
 
 
 
 
 
 
 
 
 
 
 
 
  </br></br>

  <form action="UploadFileServlet" method="post" enctype="multipart/form-data">

   <table align=Center>

    <tr>

     <td align="right">Name: </td>

     <td colspan="3"><input type="text" value="<%=name %>"  name="name" size=35px></td>

    </tr>
<tr>

     <td align="right">Email: </td>

     <td colspan="3"><input type="text" value="<%=email %>"  name="email" size=35px></td>

    </tr>



    <tr>

     <td align="right">Gender: </td>

     <td colspan="3"><input type="text" value="<%=gender %>" name="gender" size=35px></td>

    <tr>
 
     
<tr>

     <td align="right">Age: </td>

     <td colspan="3"><input type="text" value="<%=age %>"  name="age" size=35px></td>

     </tr>
    <tr>

     <td align="right">Patient ID: </td>

     <td colspan="3"><input type="text" value="<%=patientid %>"  name="patientid" size=35px></td>

    </tr>
<tr>

     <td align="right">Address: </td>

     <td colspan="3"><input type="text" value="<%=address %>" name="address" size=35px></td>

    </tr>
    <tr>

     <td align="right">Blood Group: </td>

     <td colspan="3"><input type="text" value="<%=bloodgroup %>" name="bloodgroup" size=35px></td>

    </tr>
   
   <tr>

     <td align="right">Doctor Name: </td>

     <td colspan="3"><input type="text" value="<%=doctorname%>"  name="doctorname" size=35px></td>

    </tr>
    
   
   
   
     <tr>

     <td align="right">Doctor ID: </td>

     <td colspan="3"><input type="text" value="<%=doctorid %>"  name="doctorid" size=35px></td>

    </tr>
    
     <tr>

     <td align="right">Doctor Specialist: </td>

     <td colspan="3"><input type="text" value="<%=doctorspecialist %>"  name="doctorspecialist" size=35px></td>

    </tr>
    <tr>

     <td align="right">hospital name: </td>

     <td colspan="3"><input type="text" value="<%=hospitalname %>"  name="hospitalname" size=35px></td>

    </tr>
    <tr>

     <td align="right">hospital id: </td>

     <td colspan="3"><input type="text" value="<%=hospitalid %>"  name="hospitalid" size=35px></td>

    </tr>
         <tr>

     <td align="right">Description: </td>

     <td colspan="3"><input type="text" value="<%=description %>"  name="description" size=35px></td>

    </tr>
        
    
  
  
    <tr>
     <td>Prescription:</td>

     <td colspan=3>

      <textarea name="prescription"  rows="5" cols=35px></textarea>

     </td>

    </tr>
<tr>

     <td align="right">File Upload: </td>

     <td colspan="3"> <input type="file" name="upload" id="upload" size=35px></td>

    </tr>


    <tr>

    <td></td>

    <td colspan="2"><input type="submit" value="Submit"></td>

     <td></td>

    </tr>

   </table>

  </form>
<br>
<br>
<br>
<br>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">name</th>
      <th scope="col">Email</th>
      
   <th scope="col">Age</th>
   <th scope="col">Patient id</th>
   <th scope="col">Address</th>
   <th scope="col">Blood group</th>
   <th scope="col">Doctor id</th>
   <th scope="col">Doctor specialist</th>
   <th scope="col">hospital name</th>
   <th scope="col">hospital id</th>
   <th scope="col">description</th>
   <th scope="col">prescription</th>
     <th scope="col">view </th>
    
    </tr>
  </thead>
 <%

Connection con;


con=Connecttodata.create();

Statement st = con.createStatement();
ResultSet rs= st.executeQuery("SELECT * FROM medicalrecord.prescription where patientid='"+patientid+"'");


while(rs.next()){

	
	
	
%> 

  <tbody>
    <tr>
      <td scope="row"><%=  rs.getString(1) %></td>
      
      <td><%=  rs.getString(2) %></td>
      <td><%=  rs.getString(3) %></td>
    <td><%=  rs.getString(5) %></td>
     <td><%=  rs.getString(6) %></td>
     <td><%=  rs.getString(7) %></td>
     <td><%=  rs.getString(8) %></td>
     <td><%=  rs.getString(9) %></td>
     <td><%=  rs.getString(10) %></td>
     <td><%=  rs.getString(11) %></td>
     <td><%=  rs.getString(12) %></td>
     <td><%=  rs.getString(13) %></td>
     <td><%=  rs.getString(14) %></td>
    <td><a href="view.jsp?id=<%=rs.getString(1) %>">View</a></td>
    
    </tr>
    
  </tbody>
 <%} %> 


</table>







 





</body>

</html>