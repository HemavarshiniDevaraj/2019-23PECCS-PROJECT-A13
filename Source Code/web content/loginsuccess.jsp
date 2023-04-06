<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h1{
position: absolute;left: 450px; top: 300px;





}
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
body {
  font-family: sans-serif;
overflow: hidden;

}
a {
  color: white;
  text-decoration: none;
}
ul {
  list-style: none;
}
.container {
  background-color: black;
}
.row {
  width: 80%;
  margin: auto;
}
.logo {
  font-size: 1.5rem;
}
.navbar {
  display: flex;
  justify-content: space-between;
  height: 50px;
  align-items: center;
}
.navbar .main-menu {
  display: flex;
}
.main-menu li a {
  display: inline-block;
  padding: 10px 20px;
}
li a:hover {
  background-color: blue;
}
.menu-btn {
  display: none;
}
.section {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: url(https://i.postimg.cc/vZrkVwB5/joe-woods-4-Zaq5x-Y5-M-c-unsplash.jpg)
    no-repeat center center/cover;
}

.row-content h2 {
  font-size: 2rem;
  margin-bottom: 10px;
  text-align: center;
}
.row-content p {
  font-size: 1.2rem;
  text-align: center;
  line-height: 1.6;
}

@media screen and (max-width: 768px) {
  .main-menu {
    position: absolute;
    top: 50px;
    left: 0;
    width: 100%;
    height: 100%;
    flex-direction: column;
    background-color: #252525;
    transition: 0.5s all ease;
    /* visibility: hidden; */
    display: none;
    align-items: center;
    transform: translateX(-800px);
    padding-top: 60px;
  }

  .main-menu.show {
    transform: translateX(0px);
    transition: 0.5s all ease;
  }
  .main-menu li a {
    margin-bottom: 10px;
    display: block;
  }
  .menu-btn {
    display: block;
    position: absolute;
    color: white;
    top: 10px;
    right: 30px;
    font-size: 2rem;
  }
}











</style>










</head>
<%
String nam = session.getAttribute("name").toString();


%>
<body>
<h1>Welcome <%=nam %></h1>

<div class="hii">


</div>

<div class="container">
  <div class="row">
    <div class="menu-btn">
      <i class="fa-solid fa-bars"></i>
    </div>
    <nav class="navbar">
      <div class="logo">

        
      </div>
      <ul class="main-menu">
        
         <li class="list-items"><a href="Download.jsp">Download</a></li> 
         <li class="list-items"><a href="ViewPrescription.jsp">View Prescription</a></li> 
        <li class="list-items"><a href="approvedpage.jsp">Approved Status</a></li> 
        <li class="list-items"><a href="userapplyform.jsp">Appointment Form</a></li>
        <li class="list-items"><a href="userlogin.jsp">Logout</a></li>
      </ul>
    </nav>
  </div>

</div>
<section class="section">

  <div class="row-content">
   
  </div>

</section>


</body>
</html>