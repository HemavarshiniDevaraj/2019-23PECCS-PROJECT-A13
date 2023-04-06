<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link href='https://fonts.googleapis.com/css?family=Didact+Gothic' rel='stylesheet' type='text/css'>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
HTML CSSResult Skip Results Iframe
body{
  margin:0 auto;
  width:90%;
  padding:0;
  font-family: 'Didact Gothic', sans-serif;
}
.wrap{
  margin-top:30px;
  width:480px;
}
fieldset{
  width: 400px;
  border-radius:10px;
  border-right:1px solid transparent;
  border-left:1px solid transparent;
}
legend{
  background:#457b9d;
  width:100px;
  height:100px;
  margin-left:168px;
  border-radius:50px;
}
h3{
  position:relative;
  padding-top:35px;
  text-align:center;
  color:#FF6D2E;
}
h2{
  text-align: center;
  font-size: 0.9em;
  color:lightgrey;
  padding-top: 10px;
}
input{
  width:170px;
  height: 50px;
  margin-left:30px;
  margin-top: 15px;
  text-align: center;
  border-radius: 10px;
  border: 1px solid lightgrey;
  color: #4361ee;
  font-weight: bold;
}
input:focus{
  border:1px solid rgba(255,109,46,0.6);
  box-shadow: 0 0 3px rgba(255,109,46,0.6);
  outline: none;
  font-size: 1.1em;
}
button{
  background: #fff;
  border: 1px solid transparent;
  border-radius:10px ;
  width: 120px;
  height: 50px;
  margin-left: 20px;
  margin-top:15px;
  color: #7D7769;
}
button:hover{
  background:#FBF7EF ;
  border-radius: 10px;
}
button:focus{
  border:1px solid rgba(255,109,46,0.6);
  box-shadow: 0 0 3px  rgba(255,109,46,0.6);
  outline: none;
  font-size: 1.1em;
}
.fa-facebook{
  color:#4F79A7;
}
.fa-google-plus{
  color:#D64E3C;
}
.fa-twitter{
  color:#4ECDED;
}
.fa-facebook, .fa-google-plus, .fa-twitter{
  padding: 8px;
}
input[type=submit]{
  background: #FF9D73;
  color: #3A3D52;
  margin:20px 140px 30px;
}
input[type=submit]:hover{
  background:#FF8652;
}
form{
position: absolute;right: 400px;

}






</style>

















</head>




<body>

   
<div class="wrap">
    <form action="Doctorregister" method="post">
        <fieldset>
            <legend><h3>Sign Up</h3></legend>
                <input type="text" name="username" placeholder="Your Name"/>
                <input type="text" name="email" placeholder="Email"/>
                <input type="password" name="password" placeholder="Password"/>
             <input type="text" name="mobilenumber" placeholder="mobile number"/>
        <input type="text" name="doctorid" placeholder="doctor id"/>
        <input type="text" name="hospitalname" placeholder="hospital name"/>
       <input type="text" name="hospitalid" placeholder="hospital id"/>
       <input type="text" name="specialist" placeholder="specialist"/>
       
       
       
        <input type="submit"  value="Submit">
        </fieldset>
    </form>
</div>




</body>
</html>