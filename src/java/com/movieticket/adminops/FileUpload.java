/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieticket.adminops;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Suryajith
 */
@WebServlet("/FileUpload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class FileUpload extends HttpServlet {
 

    public static final String UPLOAD_DIR = "images";
    public String dbFileName = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        RequestDispatcher dispatcher = null;
        HttpSession session = request.getSession();
        
        int id = Integer.parseInt(request.getParameter("movie_id"));
        String moviename = request.getParameter("moviename");
        String moviedesc = request.getParameter("moviedesc");
        String genre = request.getParameter("genre");
        String rdate = request.getParameter("rdate");
        String now = request.getParameter("now");
        String stime1 = request.getParameter("stime1");
        String stime2 = request.getParameter("stime2");
        String stime3 = request.getParameter("stime3");
        String seatno = request.getParameter("seat");

        Part part = request.getPart("file");//
        String fileName = extractFileName(part);//file name

        /**
         * *** Get The Absolute Path Of The Web Application ****
         */
        String applicationPath = getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        System.out.println("applicationPath:" + applicationPath);
        File fileUploadDirectory = new File(uploadPath);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }
        String savePath = uploadPath + File.separator + fileName;
        System.out.println("savePath: " + savePath);
        String sRootPath = new File(savePath).getAbsolutePath();
        System.out.println("sRootPath: " + sRootPath);
        part.write(savePath + File.separator);
        File fileSaveDir1 = new File(savePath);
        /*if you may have more than one files with same name then you can calculate some random characters
         and append that characters in fileName so that it will  make your each image name identical.*/
        dbFileName = UPLOAD_DIR + File.separator + fileName;
        part.write(savePath + File.separator);
        //out.println(id+" "+firstName+" "+lastName+" "+fileName+" "+savePath);
        /*
         You need this loop if you submitted more than one file
         for (Part part : request.getParts()) {
         String fileName = extractFileName(part);
         part.write(savePath + File.separator + fileName);
         }*/
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
            PreparedStatement pst = con.prepareStatement("insert into movie_details values(?,?,?,?,?,?,?,?,?,?,?)");
            pst.setInt(1, id);
            pst.setString(2, moviename);
            pst.setString(3, moviedesc);
            pst.setString(4, genre);
            pst.setString(5, dbFileName);
            pst.setString(6, savePath);
            pst.setString(7, rdate);
            pst.setString(8, now);
            pst.setString(9, stime1);
            pst.setString(10, stime2);
            pst.setString(11, stime3);
            pst.executeUpdate();
            
            
            if("true".equals(now)){
                PreparedStatement ps = con.prepareStatement("insert into now_running values(?,?,?,?,?,?) ");
                ps.setInt(1, id);
                ps.setString(2, moviename);
                ps.setString(3, moviedesc);
                ps.setString(4, genre);
                ps.setString(5, dbFileName);
                ps.setString(6, savePath);
                ps.executeUpdate();
                }

            PreparedStatement ps1 = con.prepareStatement("insert into seat values(?,?) ");
            ps1.setInt(1, id);
            ps1.setString(2, seatno);
            ps1.executeUpdate();
            
//            dispatcher = request.getRequestDispatcher("adminhome.jsp");
//            dispatcher.forward(request, response);
            session.invalidate();
            response.sendRedirect(request.getContextPath() + "/adminhome.jsp");
//            out.println("<center><h1>Image inserted Succesfully......</h1></center>");
//            out.println("<center><a href='display.jsp?id=" + id + "'>Display</a></center>");
        } catch (Exception e) {
            out.println(e);
        }

    }
    // file name of the upload file is included in content-disposition header like this:
    //form-data; name="dataFile"; filename="PHOTO.JPG"

    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
