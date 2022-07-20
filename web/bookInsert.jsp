<%-- 
    Document   : bookInsert
    Created on : 21-Jul-2022, 12:38:46 am
    Author     : Suryajith
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//            String uname = session.getAttribute("name");
            String uid="1";
            String uname="Babu";
            String mid = request.getParameter("id");
            String seatno =request.getParameter("seat");
            String stime =request.getParameter("stime");
            
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?"+"user=root&password=root");
            Statement st=con.createStatement();

            Statement st1 = con.createStatement();
            String sql = "SELECT * FROM now_running where movie_id="+mid;
            ResultSet rs = st1.executeQuery(sql);
            while (rs.next()) {
                String mname = rs.getString("movie_name");
                        
            
            int i=st.executeUpdate("INSERT INTO booking(`uid`,`uname`,`mid`,`mname`,`seatno`,`stime`) VALUES ('"+uid+"','"+uname+"','"+mid+"','"+mname+"','"+seatno+"','"+stime+"')");
            response.sendRedirect("payment.jsp");
            }
            }
            
            catch(Exception ex)
            {
                ex.printStackTrace();
            
            
            }
        %>
    </body>
</html>

