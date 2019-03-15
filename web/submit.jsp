
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
            String pwd=request.getParameter("pwd");
            
            
                  
            Class.forName("com.mysql.jdbc.Driver");
           
           Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");

                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from register");
                int p=0;
                while(rs.next()){
                   if( pwd.equals(rs.getString(2))){
                       p++;
                   }
                }
                if(p!=0)
                {
                  String redirectURL = "home.html";
                  response.sendRedirect(redirectURL);
                }
                   else{
                        String redirectURL = "invalid.html";
                        response.sendRedirect(redirectURL);
                     // alert ( "Please enter password." );
      
                   }
       }
       catch(Exception e){
           out.print(e.getMessage());
                String redirectURL = "invalid.html";
                        response.sendRedirect(redirectURL);
       }
       %>
    </body>
</html>
