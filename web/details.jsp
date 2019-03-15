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
       <% try{
            response.setContentType("text/html");
            String uname=request.getParameter("uname");
                  
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");

                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from patientreg");
                int p=0;
                while(rs.next()){
                   if( uname.equals(rs.getString(1))){
                       p++;
                       break;
                   }
                }
                if(p!=0)
                {
       %>
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
 background-image:url("new.jpg");
 }
 th{
     color:black;
 }
 td{
     color:darkmagenta;
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
<form action="details.jsp" method="post">
  <div class="search-control">
    Enter Patient Name:<input type="text" name="uname" >
    <input type="submit" value="Get Details"></form>
<br>
<br><br>   
           <h3 align="center">  Your Details:</h3>  
         <TABLE align="center" BORDER="1">
            <TR>
               <TH>Patient name:</TH>
               <td><%= rs.getString(1) %></td>
            </tr>
            <TR>
               <TH>Father name:</TH>
               <td><%= rs.getString(2) %></td>
            </tr>
            <TR>
               <TH>Mother name:</TH>
               <td><%= rs.getString(3) %></td>
            </tr>
            <TR>
               <TH>Gender:</TH>
               <td><%= rs.getString(4) %></td>
            </tr>
            <TR>
               <TH>Age:</TH>
               <td><%= rs.getString(5) %></td>
            </tr>
            <TR>
               <TH>Problem:</TH>
               <td><%= rs.getString(6) %></td>
            </tr>
            <TR>
               <TH>Mobile:</TH>
               <td><%= rs.getString(7) %></td>
            </tr>
            <TR>
               <TH>E-mail:</TH>
               <td><%= rs.getString(8) %></td>
            </tr>
            
       </TABLE>
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
       
               <%
                                     
                }
                   else{
                        String redirectURL = "invaliddetails.html";
                        response.sendRedirect(redirectURL);
                     // alert ( "Please enter password." ); 


      
                   }
       }
       catch(Exception e){
       out.print(e.getMessage());}
%>
       
    </body>
</html>
