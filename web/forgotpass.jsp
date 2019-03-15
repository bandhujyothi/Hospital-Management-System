
<%@page import="java.sql.PreparedStatement"%>
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

            PreparedStatement ps = null;
            String sql="Update register set uname=?, pwd=? where uname=+uname";
            ps = con.prepareStatement(sql);
              ps.setString(1, uname);
            ps.setString(2, pwd);
            int i = ps.executeUpdate();
            if(i > 0)
            {
            out.print("Record Updated Successfully");
             String redirectURL = "pwdreseted.html";
            
            response.sendRedirect(redirectURL);
            }
            else
            {
                String redirectURL = "forgotpass.html";
            }
              
       }
       catch(Exception e){
           out.print(e.getMessage());
           out.print("error");
       }
       %>
    </body>
</html>
