<%-- 
    Document   : newjsp2
    Created on : 08-Jul-2022, 11:14:10 am
    Author     : install
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String mid = request.getParameter("mid");
String movie = request.getParameter("mname");
String fback = request.getParameter("fback");
String rating = request.getParameter("rate");

Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "root");
String sql="insert into feedback (`uname`,`mid`,`movie`,`fback`,`star`)values(?,?,?,?,?) ";
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, mid);
ps.setString(3, movie);
ps.setString(4, fback);
ps.setString(5, rating);

int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("home.jsp");
}
else
{
out.print("There is a problem in inserting Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
%>
