<%-- 
    Document   : delete
    Created on : 06-Jul-2022, 3:14:42 pm
    Author     : install
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@page import="java.sql.*,java.util.*"%>
       <%
           String id=request.getParameter("id");
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?"+"user=root&password=root");
  Statement st=conn.createStatement();
  st.executeUpdate("Delete from now_running where movie_id="+id );
   response.sendRedirect("adminhome.jsp");
           }
           catch(Exception e)
       {
       e.printStackTrace();
             }
           %>
    </body>
</html>
