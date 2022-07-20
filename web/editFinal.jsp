<%-- 
    Document   : newjsp2
    Created on : 08-Jul-2022, 11:14:10 am
    Author     : install
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/movie";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("moviename");
String movie_name=request.getParameter("moviedesc");
String movie_desc=request.getParameter("movie_desc");
String genre=request.getParameter("genre");
//String path=request.getParameter("file");
String release_date=request.getParameter("rdate");
String end_date=request.getParameter("edate");
String show_time=request.getParameter("stime");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update movie_details set movie_name=?,movie_desc=?,genre=?,release_date=?,end_date=?,show_time=? where movie_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, movie_name);
ps.setString(2, movie_desc);
ps.setString(3, genre);
//ps.setString(5, path);
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
