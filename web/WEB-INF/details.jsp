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
            String tno=request.getParameter("tno");
                  
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");

                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from gopi");
                int p=0;
                while(rs.next()){
                   if( name.equals(rs.getString(1))){
                       p++;
                       break;
                   }
                }
                if(p!=0)
                {
       %>
       <h2 align="center">
<style>
	body {background-image:url("good.jpg");
         background-size:cover;}
	h2   {color:black;}
.footer {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: gray;
    color: white;
    text-align: center;
}
</style>

<form action="Schedule" method="post">
  <div class="search-control">
       
		Enter name:<input type="text" name="tn" placeholder="name"><br><br>
                <input type="submit" value="get Details">
                <TABLE BORDER="1">
            <TR>
               <TH>tno</TH>
               <TH>Pa Name</TH>
            </TR>
           <TR>
               <TD> <%= rs.getString(1) %> </TD>
               <TD> <%= rs.getString(2) %> </TD>
           </tr> 
               
         <TABLE BORDER="1">
            <TR>
               <TH>station name</TH>
               <th>arrival-time</th>
               <th>despatched -time</th>
            </tr>
             <tr>
                <td>source:<%= rs.getString(3) %></td>
                <TD> <%= rs.getString(4) %> </TD>
                <TD> <%= rs.getString(5) %> </TD>
             </TR>
             <tr>
                <td><%= rs.getString(6) %></td>
                <TD> <%= rs.getString(7) %> </TD>
                <TD> <%= rs.getString(8) %> </TD>
             </TR>
             <tr>
                <TD> <%= rs.getString(9) %> </TD>
                <TD> <%= rs.getString(10) %> </TD>
                <td><%= rs.getString(11) %></td>
             </TR>
             <tr>
                <TD> <%= rs.getString(12) %> </TD>
                <TD> <%= rs.getString(13) %> </TD>
                <td><%= rs.getString(14) %></td>
             </TR>
             <tr>
                <TD> destination:<%= rs.getString(15) %> </TD>
                <TD> <%= rs.getString(16) %> </TD>
                <td><%= rs.getString(17) %></td>
             </TR>
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
                        String redirectURL = "index2.html";
                        response.sendRedirect(redirectURL);
                     // alert ( "Please enter password." );
      
                   }
       }
       catch(Exception e){
       out.print(e.getMessage());}
%>
       
    </body>
</html>
