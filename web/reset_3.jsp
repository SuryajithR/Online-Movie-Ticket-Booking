<%-- 
    Document   : reset
    Created on : 28-Jul-2022, 12:37:01 am
    Author     : Suryajith
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("id");
String seat = request.getParameter("seat");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "root");
    String sql="Update seat set seat4=250 where mid="+id;
    ps = con.prepareStatement(sql);

    int i = ps.executeUpdate();
    if(i > 0)
    {
    response.sendRedirect("adminhome.jsp");
    }
    else
    {
    out.print("There is a problem in updating Record.");
    }
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
