<%-- 
    Document   : newjsp2
    Created on : 08-Jul-2022, 11:14:10 am
    Author     : install
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String id = request.getParameter("id");
String movie_name=request.getParameter("moviename");
String movie_desc=request.getParameter("moviedesc");
String genre=request.getParameter("genre");
String filename=request.getParameter("filename");
String path=request.getParameter("path");
String release_date=request.getParameter("rdate");
String end_date=request.getParameter("edate");
String show_time=request.getParameter("stime");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "root");
String sql="Update movie_details set movie_name=?,movie_desc=?,genre=?,file_name=?,path=?,release_date=?,end_date=?,show_time=? where movie_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, movie_name);
ps.setString(2, movie_desc);
ps.setString(3, genre);
ps.setString(4, filename);
ps.setString(5, path);
ps.setString(6, release_date);
ps.setString(7, end_date);
ps.setString(8, show_time);

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
