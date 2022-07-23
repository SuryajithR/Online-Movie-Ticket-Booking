<%-- 
    Document   : bookInsert
    Created on : 21-Jul-2022, 12:38:46 am
    Author     : Suryajith
--%>
<%@page import="java.sql.PreparedStatement"%>
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
            String mid = request.getParameter("mid");
            String uid = request.getParameter("uid");
            String uname = request.getParameter("name");
            String seatno =request.getParameter("seat");
            int seatno1= Integer.parseInt(request.getParameter("seat"));
            String stime =request.getParameter("stime");
            String amount =request.getParameter("Amount");
            
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?"+"user=root&password=root");
            Statement st=con.createStatement();

            Statement st1 = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();
            PreparedStatement ps = null;
            String sql = "SELECT * FROM now_running where movie_id="+mid;
            ResultSet rs = st1.executeQuery(sql);
            
            String sql2 = "SELECT no_of_seats FROM seat where mid="+mid;
            ResultSet rs2 = st2.executeQuery(sql2);
            while (rs2.next()) {
            String sno = rs2.getString("no_of_seats");
            int stno=Integer.parseInt(sno);
            int seat=stno-seatno1;
            String s=Integer.toString(seat);
            
            String sql1="Update seat set no_of_seats=? where mid="+mid;
            ps = con.prepareStatement(sql1);
            ps.setString(1, s);
            ps.executeUpdate();
            }
            
            String sql3 = "select * from booking order by id desc limit 1;";
            ResultSet rs3 = st3.executeQuery(sql3);
            while (rs3.next()) {
                int bid = rs3.getInt("id");
                bid++;
                String bookid=Integer.toString(bid);

            while (rs.next()) {
                String mname = rs.getString("movie_name");
                        
            
            st.executeUpdate("INSERT INTO booking(`uid`,`uname`,`mid`,`mname`,`seatno`,`stime`,`amount`) VALUES ('"+uid+"','"+uname+"','"+mid+"','"+mname+"','"+seatno+"','"+stime+"','"+amount+"')");
//            response.sendRedirect("payment.jsp");
            String redirectURL1 = "payment.jsp?id="+bookid;
            response.sendRedirect(redirectURL1);
            }
            }
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            
            
            }
        %>
    </body>
</html>

