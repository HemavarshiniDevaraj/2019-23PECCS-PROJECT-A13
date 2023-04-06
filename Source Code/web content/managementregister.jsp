<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet" href="styles.css" />
  <style type="text/css">
  body {
  width: 100%;
  height: 100vh;
  margin: 0;
  background-color: #1b1b32;
  color: #f5f6f7;
  font-family: Tahoma;
  font-size: 16px;
}

h1, p {
  margin: 1em auto;
  text-align: center;
}

form {
  width: 60vw;
  max-width: 500px;
  min-width: 300px;
  margin: 0 auto;
  padding-bottom: 2em;
}

fieldset {
  border: none;
  padding: 2rem 0;
  border-bottom: 3px solid #3b3b4f;
}

fieldset:last-of-type {
  border-bottom: none;
}

label {
  display: block;
  margin: 0.5rem 0;
}

input,
textarea,
select {
  margin: 10px 0 0 0;
  width: 100%;
  min-height: 2em;
}

input, textarea {
  background-color: white;
  border: 1px solid #0a0a23;
  color: black;
}

.inline {
  width: unset;
  margin: 0 0.5em 0 0;
  vertical-align: middle;
}

input[type="submit"] {
  display: block;
  width: 60%;
  margin: 1em auto;
  height: 2em;
  font-size: 1.1rem;
  background-color: #3b3b4f;
  border-color: white;
  min-width: 300px;
}

input[type="file"] {
  padding: 1px 2px;
}

a {
  color: #dfdfe2
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </style>
  
  
  
  </head>
  <body>
    <h1>Registration Form</h1>
    <p>Please fill out this form with the required information</p>
    <form action="UploadFileServlet2" method="post" enctype="multipart/form-data">
      <fieldset>
        <label for="first-name">Hospital name: <input id="first-name" name="hospitalname" type="text" required /></label>
        <label for="last-name">Hospital id: <input id="last-name" name="hospitalid" type="text" required /></label>
        <label for="email">Hospital Email: <input id="email" name="email" type="text" required /></label>
            <label for="new-password">Hospital mobile number: <input id="new-password" name="mobilenumber" type="text"  required /></label>
     
        
        <label for="new-password">Hospital address: <input id="new-password" name="hospitaladdress" type="text"  required /></label>
         <label for="new-password">Hospital birth: <input type="date" id="new-password" name="dateofbirth"  required /></label>
         <label for="new-password">Hospital Experience: <input id="new-password" name="hospitalexperience" type="number" required /></label>
     <label for="new-password">Password: <input id="new-password" name="password" type="password"  required /></label>
      </fieldset>
       <label for="profile-picture">Upload a Hospital Licence: <input id="profile-picture" type="file" name="file" /></label>
           
      <input type="submit" value="Submit" />
    </form>
  </body>
</html>