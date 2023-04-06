<!DOCTYPE html>

<html>

<head>

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
position: absolute;left: 670px;top: 380px;




}
   </style>

</head>

<body>

  </br></br>

  <form action="Appointmentreg" method="post">

   <table align=Center>

    <tr>

     <td align="right">Name: </td>

     <td colspan="3"><input type="text" name="name" size=35px></td>

    </tr>
<tr>

     <td align="right">Email: </td>

     <td colspan="3"><input type="text" name="email" size=35px></td>

    </tr>



    <tr>

     <td align="right">Hospital name: </td>

     <td colspan="3"><input type="text" name="hosname" size=35px></td>

    <tr> 

     <td align="right">Gender: </td>

     <td><input type="radio" name="gender" value="male" checked> Male</td>

     <td><input type="radio" name="gender" value="female"> Female</td>

     <td><input type="radio" name="gender" value="other"> Other </td>

     </td>

    </tr>
<tr>

     <td align="right">Age: </td>

     <td colspan="3"><input type="number" name="age" size=35px></td>

     </tr>
    <tr>

     <td align="right">Patient ID: </td>

     <td colspan="3"><input type="text" name="patientid" size=35px></td>

    </tr>
<tr>

     <td align="right">Address: </td>

     <td colspan="3"><input type="text" name="address" size=35px></td>

    </tr>
    <tr>

     <td align="right">Blood Group: </td>

     <td colspan="3"><input type="text" name="bloodgroup" size=35px></td>

    </tr>
    <tr>
   
      <td align="right">Specialist: </td>
   <td class="hi">  <select id="appointment_for" name="specialist" required style="width:280px;height:40px;border-radius: 10px;text-align:center;">
          <option value="PSYCHOLOGY">PSYCHOLOGY</option>
          <option value="PHYSIOTHERAPY">PHYSIOTHERAPY</option>
          <option value="NUTRITIONIST">NUTRITIONIST</option>
     <option value="GENERAL">GENERAL</option>
        
        </select></td>
    
    
    </tr>
    
    
    
    
    
    
    
    
    
    
    
     <td>Description:</td>

     <td colspan=3>

      <textarea name="description" rows="5" cols=35px></textarea>

     </td>

    </tr>

    <tr>

    <td></td>

    <td colspan="2"><input type="submit" value="Submit"></td>

     <td></td>

    </tr>

   </table>

  </form>

</body>

</html>