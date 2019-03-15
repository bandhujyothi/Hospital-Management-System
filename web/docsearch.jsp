<%-- 
    Document   : Traincheck
    Created on : Oct 9, 2018, 2:42:37 PM
    Author     : RGUKT
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
       <h2 align="center">
<style>
        


.button:hover {
  background-color: #555;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Navbar links */
.topnav a {
    border-radius: 50%;
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
  border-radius: 20%;
}
.topnav.inactive a{
  background-color:black;
  color: black;
}
body{
 background-image:url("tt.jpeg");
 }
 th{
     color:black;
 }
 td{
     color:hotpink;
 }
</style>

<div class="topnav">
      <a href="home.html">Home</a>
      <a href="appointment.html">Appointment</a>
      <a href="pharm.html">Pharmacy</a>
      <a href="staff.html">Staff</a>
      <a href=lab.html>Laboratory</a>
      <a href="docsearch.html">Search Doctor</a>
      <a href="preg.html">Register Patient</a>
      <a href="details.html">Patient Details</a>
      <a href="bd.html">Donate Blood</a>
       <a href="feedback.html">FeedBack</a>
      <a href="about.html">About</a>
      <a href="index.html">signout</a>
      
    </div>
<form action="home.html" method="post">
  <div class="search-control">
<br><br>   
           <h3 align="center"> Doctor Details:</h3>  
         <TABLE align="center" BORDER="1">
            <TR>
               <TH>Doctor's name</TH>
               <TH>Department</TH>
               <TH>E-mail</TH>
            </tr>
            <TR>
               
                <td>Jashiya anjum</td>
                 <td>Neurology</td>
                  <td>jashiya_12@gmail.com</td>
                   
            </tr>
             <TR>
                <td>Bandu Jyothi</td>
                 <td>Opthamalogy</td>
                  <td>jyo_32@gmail.com</td>  
            </tr>
             <TR>
                <td>Ramya</td>
                 <td>Cardiology</td>
                  <td>ramya_ram@gmail.com</td>  
            </tr>
             <TR>
                <td>Andrew</td>
                 <td>Gynacology</td>
                  <td>andrew22@gmail.com</td>  
            </tr>
             <TR>
                <td>jhonson</td>
                 <td>Cardiology</td>
                  <td>shyam_2@gmail.com</td>  
            </tr> </TABLE>
            
   <input type='submit' value='back'></form>
           
          
            
      
    </div>
<script>
  </form>
 <div class="footer">
  <p>Developed by:b141246@rgkukt.ac.in</p>
</div>

<pre >                                       <button onclick="goBack()">Go Back</button>  <pre>                                                                     
<script>
function goBack() {
    window.history.back();
}
</script>
  
       
    </body>
</html>

