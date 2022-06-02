/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieticket.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sun.rmi.server.Dispatcher;

/**
 *
 * @author surya
 */
@WebServlet(name = "RegistrationServlet", urlPatterns = {"/register"})
public class RegistrationServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            String uname = request.getParameter("name");
            String uemail = request.getParameter("email");
            String upwd= request.getParameter("pass");
            String umobile = request.getParameter("contact");
            RequestDispatcher dispatcher = null;
            Connection con = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                PreparedStatement pst = con.prepareStatement("INSERT INTO users(`uname`,`upwd`,`uemail`,`umobile`)VALUES(?,?,?,?)");
                
                pst.setString(1, uname);
                pst.setString(2, upwd);
                pst.setString(3, uemail);
                pst.setString(4, umobile);  
                
                int rowCount = pst.executeUpdate();
                dispatcher = request.getRequestDispatcher("registration.jsp");
                if(rowCount >0){
                    request.setAttribute("status", "success");
                }else{
                    request.setAttribute("status", "failed");
                }
                dispatcher.forward(request, response);
            } catch (Exception e){
                e.printStackTrace();
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
    }
}
