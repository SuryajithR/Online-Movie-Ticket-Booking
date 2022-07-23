<%-- 
    Document   : newjsp2
    Created on : 08-Jul-2022, 11:14:10 am
    Author     : install
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String mid = request.getParameter("mid");
String movie_name=request.getParameter("moviename");
String movie_desc=request.getParameter("moviedesc");
String genre=request.getParameter("genre");
String release_date=request.getParameter("rdate");
String now=request.getParameter("now");
String show_time1=request.getParameter("stime1");
String show_time2=request.getParameter("stime2");
String show_time3=request.getParameter("stime3");

if(mid != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "root");
String sql="Update movie_details set movie_name=?,movie_desc=?,genre=?,release_date=?,now_r=?,show_time_1=?,show_time_2=?,show_time_3=? where movie_id="+mid;
ps = con.prepareStatement(sql);
ps.setString(1, movie_name);
ps.setString(2, movie_desc);
ps.setString(3, genre);
ps.setString(4, release_date);
ps.setString(5, now);
ps.setString(6, show_time1);
ps.setString(7, show_time2);
ps.setString(8, show_time3);

int i = ps.executeUpdate();
if("false".equals(now)){
      Statement st=con.createStatement();
      st.executeUpdate("Delete from now_running where movie_id="+mid );
}
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
out.println("Last part of the page");
%>
