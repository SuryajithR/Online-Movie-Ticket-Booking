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
                    String usname=String.valueOf(session.getAttribute("name"));
                    Statement st1=conn.createStatement();
                    String sql1 = "SELECT * FROM feedback where fid="+id;
                    ResultSet rs1 = st1.executeQuery(sql1);
                    while (rs1.next()) {
                        String mid  = rs1.getString("mid");
                        String namee  = rs1.getString("uname");
                    if(namee.equals(usname)){
                    st.executeUpdate("Delete from feedback where fid="+id );
                     response.sendRedirect("details.jsp?id="+mid);
                    }
                    else{
                    response.sendRedirect("details.jsp?id="+mid);
                    }
           }
                     }
                     catch(Exception e)
                     {
                     e.printStackTrace();
                           }
           %>
    </body>
</html>
