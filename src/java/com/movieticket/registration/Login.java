/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieticket.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author surya
 */
@WebServlet(name = "Login", urlPatterns = {"/signin"})
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uemail = request.getParameter("username");
        String upwd= request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
            PreparedStatement pst = con.prepareStatement("select * from users where uemail = ? and upwd= ? ");
            pst.setString(1, uemail);
            pst.setString(2, upwd);
            
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                session.setAttribute("name", rs.getString("uname"));
                String usertype=rs.getString("utype");
                if("user".equals(usertype)){
                    dispatcher = request.getRequestDispatcher("home.jsp");
                }
                else{
                    dispatcher = request.getRequestDispatcher("adminhome.jsp");
                }
            }else{
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("signin.jsp");
            }
            dispatcher.forward(request, response);

        } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
            e.printStackTrace();
        }

        }
}
