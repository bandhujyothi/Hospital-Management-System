
<%-- 
    Document   : register
    Created on : Oct 9, 2018, 12:11:55 PM
    Author     : RGUKT
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
            response.setContentType("text/html");
            //PrintWriter out=response.getWriter();
            String pname =request.getParameter("pname");
            String fname =request.getParameter("fname");
            String mname =request.getParameter("mname");
            String mob=request.getParameter("mob");
            String age=request.getParameter("age");
            String prob=request.getParameter("prob");
            String gn=request.getParameter("gn");
            String mail=request.getParameter("mail");
            
            Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            String conURL="jdbc:mysql://localhost:3306/hospital";
            String dbUser="root";
            String dbPWD="";
            con=DriverManager.getConnection(conURL,dbUser,dbPWD);
            PreparedStatement ps=con.prepareStatement("insert into patientreg values(?,?,?,?,?,?,?,?)");
            ps.setString(1,pname);
            ps.setString(2,fname);
            ps.setString(3,mname);
             ps.setString(4,gn);
            ps.setString(5,age);
            ps.setString(6,prob);
            ps.setString(7,mob);
             ps.setString(8,mail);
            int i=ps.executeUpdate();
            if(i>0)
            {
              
                out.print("You have registered successfully");
                String redirectURL = "home.html";
            //response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.sendRedirect(redirectURL); 
            }
            
             %>

</html>
