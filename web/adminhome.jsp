<%-- 
    Document   : adminhome
    Created on : 25-Jun-2022, 10:46:00 pm
    Author     : surya
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin Page - PVR Cinemas</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script language="javascript">
function deleteRecord(id){
    var doIt=confirm('Do you want to delete the record?');
  if(doIt){
   var f=document.form;
    f.method="post";
    f.action='../DeleteServlet?id='+id;
    f.submit();
    }
  else{

    }
}


function reset(id){
    var doIt=confirm('Are you sure?');
  if(doIt){
   var f=document.form;
    f.submit();
    }
  else{

    }
}
</script>
<script type="text/javascript">
    $(function cale () {
    $('#datetimepicker1').datetimepicker();
    });
</script>
<style>
    

    
:root {
    --theme-yellow:   #FFFFFF;
    --theme-black:    #101820FF;
    --theme-gray:       #8892B0;

}

body {
  background-color: var(--theme-black);
}

/* SECTION VERTICAL TABS */
#experienceTab.nav-pills .nav-link.active {
    color: var(--theme-yellow) !important;
    background-color: transparent;
    border-radius: 0px;
    border-left: 3px solid var(--theme-yellow);
    font-size: 20px;
}
#experienceTab.nav-pills .nav-link {
    border-radius: 0px;
    border-left: 2px solid var(--theme-gray);
    font-size: 18px;
}
.date-range {
    letter-spacing: 0.01em;
    color: var(--theme-gray);
}

/* STUB  LINKS */
a {
    color: var(--theme-gray);
    transition: 0.3s eas-in-out;
}
a:hover {
    color: var(--theme-yellow);
}
    
    
    
    
    
    
/*body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 22px;
}*/
.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
	background: #5a6578;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {        
	padding-bottom: 15px;
	background: #5a6578;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}
.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}
.table-title .btn-group {
	float: right;
}
.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}
.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}
.table-title .btn span {
	float: left;
	margin-top: 2px;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
table.table tr th:first-child {
	width: 60px;
}
table.table tr th:last-child {
	width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}
table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}	
table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td a.edit {
	color: #FFC107;
}
table.table td a.delete {
	color: #F44336;
}
table.table td i {
	font-size: 19px;
}
table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}
.pagination {
	float: right;
	margin: 0 0 5px;
}
.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}
.pagination li a:hover {
	color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}
.pagination li.active a:hover {        
	background: #0397d6;
}
.pagination li.disabled i {
	color: #ccc;
}
.pagination li i {
	font-size: 16px;
	padding-top: 6px
}
.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}    
/* Modal styles */
.modal .modal-dialog {
	max-width: 450px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}
.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}
.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}
.modal .modal-title {
	display: inline-block;
}
.modal .form-control {
        font-size: 15px;
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}
.modal textarea.form-control {
	resize: vertical;
}
.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}	
.modal form label {
	font-weight: bold;
}
.table-dark{
  font-size: 15px;
}



/*progress bar*/




</style>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600%7CUbuntu:300,400,500,700" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	<!-- CSS -->
	<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/plyr.css">
	<link rel="stylesheet" href="css/photoswipe.css">
	<link rel="stylesheet" href="css/default-skin.css">
	<link rel="stylesheet" href="css/main.css">

	<!-- Favicons -->
	<link rel="icon" type="image/png" href="icon/favicon-32x32.png" sizes="32x32">
	<link rel="apple-touch-icon" href="icon/favicon-32x32.png">
	<link rel="apple-touch-icon" sizes="72x72" href="icon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="icon/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="144x144" href="icon/apple-touch-icon-144x144.png">

	<meta name="description" content="">
	<meta name="keywords" content="">
</head>
<body>
    
    	<header class="headerr">
		<div class="header__wrap">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="header__content">
							<!-- header logo -->
							<a href="adminhome.jsp" class="header__logo">
								<img src="img/logo.svg" alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
        </header>
    
    
        <br><br><br><br><br>
                             
<!-- ADD Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <form action="FileUpload" method="post" enctype="multipart/form-data">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Add New Movie</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
                                        <div class="form-group">
						<label>Id</label>
						<input type="number" name="movie_id" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Name</label>
						<input type="text" name="moviename" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Description</label>
						<input type="text" name="moviedesc" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Genre</label>
						<input type="text" name="genre" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Image Link</label>
						<input type="file" name="file" required>
					</div>
                                        <div class="form-group">
						<label>Release Date</label>
                                                <input type="date" name="rdate" class="form-control" required>
					</div>
                                        <div class="form-group">
                                            <label>Now running</label>
                                            <select name="now" id="now" class="form-control" required>
                                                <option value="true">True</option>
                                                <option value="false">False</option>
                                              </select>
					</div>
                                        <div class="form-group">
						<label>Show Time 1</label>
						<input type="text" name="stime1" class="form-control" required>
					</div>
                                    <div class="form-group">
						<label>Show Time 2</label>
						<input type="text" name="stime2" class="form-control" required>
					</div>
                                    <div class="form-group">
						<label>Show Time 3</label>
						<input type="text" name="stime3" class="form-control" required>
					</div>
                                    <div class="form-group">
						<label>Available seat count</label>
						<input type="text" name="seat" class="form-control" required>
					</div>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-success" value="submit">
				</div>
			</form>
		</div>
	</div>
        </form>
</div>

<!--Tab content-->
<div class="row p-5">
  <div class="col-md-2 mb-13">
    <ul class="nav nav-pills flex-column" id="experienceTab" role="tablist">
      <li class="nav-item">
        <span class="sign__text"></span><br><br><br><br><br><br>
      </li>
      <li class="nav-item">
        <a class="nav-link active" style="display:block;" id="home-tab" data-toggle="tab" href="#t0" role="tab" aria-controls="profile" aria-selected="false">Admin home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#t1" role="tab" aria-controls="profile" aria-selected="false">Movie Master</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#t2" role="tab" aria-controls="profile" aria-selected="false">Now running</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#t3" role="tab" aria-controls="profile" aria-selected="false">Available seats</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#t4" role="tab" aria-controls="profile" aria-selected="false">Payment Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#t5" role="tab" aria-controls="profile" aria-selected="false">Feedbacks</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="profile-tab" href="index.jsp">Sign Out</a>
      </li>
    </ul>
  </div>
  <!-- /.col-md-4 -->
  <div class="col-md-10">
      <div class="tab-content" id="experienceTabContent"><br><br><br>
    <div class="tab-pane fade show active text-left text-light" id="t0" role="tabpanel" aria-labelledby="home-tab">

<!--Admin home code--> 
        <div class="container-x2">   
            <div class="table-responsive">
                        <div class="table-wrapper">
                    <%
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                            Statement st = con.createStatement();
                            Statement st1 = con.createStatement();
                            Statement st2 = con.createStatement();
                            Statement st3 = con.createStatement();
                            String sql = "SELECT COUNT(*) FROM booking";
                            String sql1 = "SELECT COUNT(*) FROM users";
                            String sql2 = "SELECT COUNT(*) FROM now_running";
                            String sql3 = "SELECT COUNT(*) FROM feedback";
                            ResultSet rs = st.executeQuery(sql);
                            ResultSet rs1 = st1.executeQuery(sql1);
                            ResultSet rs2 = st2.executeQuery(sql2);
                            ResultSet rs3 = st3.executeQuery(sql3);
                            if(rs1.next()){
                                int users=Integer.parseInt(rs1.getString("COUNT(*)"));
                            if(rs2.next()){
                                int run=Integer.parseInt(rs2.getString("COUNT(*)"));
                            if(rs3.next()){
                                int rate=Integer.parseInt(rs3.getString("COUNT(*)"));
                            while (rs.next()) {
                                String c = rs.getString("COUNT(*)");
                                int book = Integer.parseInt(c);
                            %>  
                            
                    <h2>Total users</h2>       
                    <div class="progress" style="height: 30px;">
                    <div class="progress-bar" role="progressbar" style="width: <%=users%>%;" aria-valuenow="<%=users%>" aria-valuemin="0" aria-valuemax="100"><%=users%></div>
                    </div>
                    <h2>Currently running movies</h2>       
                    <div class="progress" style="height: 30px;">
                    <div class="progress-bar" role="progressbar" style="width: <%=run%>%;" aria-valuenow="<%=run%>" aria-valuemin="0" aria-valuemax="100"><%=run%></div>
                    </div>
                    <h2>Total Bookings</h2>        
                    <div class="progress" style="height: 30px;">
                    <div class="progress-bar" role="progressbar" style="width: <%=book%>%;" aria-valuenow="<%=book%>" aria-valuemin="0" aria-valuemax="100"><%=book%></div>
                    </div>
                    <h2>User Ratings</h2>        
                    <div class="progress" style="height: 30px;">
                    <div class="progress-bar" role="progressbar" style="width: <%=rate%>%;" aria-valuenow="<%=rate%>" aria-valuemin="0" aria-valuemax="100"><%=rate%></div>
                    </div>

                        <%
                            }
                            }
                            }
                            }
                        } catch (Exception e) {
                            out.println(e);
                        }
                    %>
                        </div>
                </div>        
        </div>
      </div>
<!--Admin home code end-->

      <div class="tab-pane fade text-left text-light" id="t1" role="tabpanel" aria-labelledby="profile-tab">

<!--Movie Details table code-->    
        <div class="container-x2">
                <div class="table-responsive">
                        <div class="table-wrapper">
                                <div class="table-title">
                                        <div class="row">
                                                <div class="col-sm-6">
                                                        <h2>Manage <b>Movies</b></h2>
                                                </div>
                                                <div class="col-sm-6">
                                                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Movie</span></a>
                                                </div>
                                        </div>
                                </div>

                            <table class="table table-hover table-dark">
                                        <thead>
                                                <tr>
                                                        <th>Id</th>
                                                        <th>Name</th>
                                                        <th>Description</th>
                                                        <th>Genre</th>
                                                        <th>Release Date</th>
                                                        <th>Now running</th>
                                                        <th>Show Time 1</th>
                                                        <th>Show Time 2</th>
                                                        <th>Show Time 3</th>
                                                        <th>Image</th>
                                                        <th></th>
                                                </tr>
                                        </thead>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                String sql = "SELECT * FROM movie_details";
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String id = rs.getString("movie_id");    
                                                    String moviename = rs.getString("movie_name");
                                                    String desc = rs.getString("movie_desc");
                                                    String genre = rs.getString("genre");
                                                    String filename = rs.getString("file_name");
                                                    String rdate = rs.getString("release_date");
                                                    String now = rs.getString("now_r");
                                                    String stime1 = rs.getString("show_time_1");
                                                    String stime2 = rs.getString("show_time_2");
                                                    String stime3 = rs.getString("show_time_3");
                                                %>  
                                        <tbody>
                                                <tr>
                                                        <td><%=id%></td>
                                                        <td><%=moviename%></td>
                                                        <td><%=desc%></td>
                                                        <td><%=genre%></td>
                                                        <td><%=rdate%></td>
                                                        <td><%=now%></td>
                                                        <td><%=stime1%></td>
                                                        <td><%=stime2%></td>
                                                        <td><%=stime3%></td>
                                                        <td><image src="<%=filename%>" width="150" height="100"/></td>
                                                        <td>
                                                                <a href="EditMovie.jsp?id=<%=id%>" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>

                                                        </td>
                                                </tr>
                                                        <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
                                        </tbody>
                                </table>

                                <div class="clearfix">
                                        <!--<div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>-->
        <!--				<ul class="pagination">
                                                <li class="page-item disabled"><a href="#">Previous</a></li>
                                                <li class="page-item"><a href="#" class="page-link">1</a></li>
                                                <li class="page-item"><a href="#" class="page-link">2</a></li>
                                                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                                                <li class="page-item"><a href="#" class="page-link">4</a></li>
                                                <li class="page-item"><a href="#" class="page-link">5</a></li>
                                                <li class="page-item"><a href="#" class="page-link">Next</a></li>
                                        </ul>-->
                                </div>
                        </div>
                </div>        
        </div>
      </div>
<!--Movie details code end-->

      <div class="tab-pane fade text-left text-light" id="t2" role="tabpanel" aria-labelledby="profile-tab">
          
          
<!--Now running table code-->
        <div class="container-x2">
                <div class="table-responsive">
                        <div class="table-wrapper">
                                <div class="table-title">
                                        <div class="row">
                                                <div class="col-sm-6">
                                                        <h2>Currently <b>Running</b></h2>
                                                </div>
                                                <div class="col-sm-6">
                                                </div>
                                        </div>
                                </div>

                                <table class="table table-dark">
                                        <thead>
                                                <tr>
                                                    
                                                        <th>Id</th>
                                                        <th>Name</th>
                                                        <th>Description</th>
                                                        <th>Genre</th>
                                                        <th>Image</th>
                                                </tr>
                                        </thead>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                String sql = "SELECT * FROM now_running";
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String id = rs.getString("movie_id");    
                                                    String moviename = rs.getString("movie_name");
                                                    String desc = rs.getString("movie_desc");
                                                    String genre = rs.getString("genre");
                                                    String filename = rs.getString("file_name");
        //                                          String path = rs.getString("path");
                                                %>
                                        <tbody>
                                                <tr>
                                                    
                                                        <td><%=id%></td>
                                                        <td><%=moviename%></td>
                                                        <td><%=desc%></td>
                                                        <td><%=genre%></td>
                                                        <td><image src="<%=filename%>" width="150" height="100"/></td>
                                                        <td>
                                                                <!--<a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>-->
                                                                <a href="deleteMovie.jsp?id=<%=id%>" onclick="deleteRecord(<%=rs.getString(1)%>);" class="delete"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                        </td>
                                                </tr>
                                                        <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
                                        </tbody>
                                </table>

                                <div class="clearfix">
<!--                                        <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
        				<ul class="pagination">
                                                <li class="page-item disabled"><a href="#">Previous</a></li>
                                                <li class="page-item"><a href="#" class="page-link">1</a></li>
                                                <li class="page-item"><a href="#" class="page-link">2</a></li>
                                                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                                                <li class="page-item"><a href="#" class="page-link">4</a></li>
                                                <li class="page-item"><a href="#" class="page-link">5</a></li>
                                                <li class="page-item"><a href="#" class="page-link">Next</a></li>
                                        </ul>-->
                                </div>
                        </div>
                </div>        
        </div>
<!--Now running table code end-->
                                        
                                        
      </div>
                                        
                                        
<div class="tab-pane fade text-left text-light" id="t5" role="tabpanel" aria-labelledby="profile-tab">
          
          
<!--Feedback table code-->
        <div class="container-x2">
                <div class="table-responsive">
                        <div class="table-wrapper">
                                <div class="table-title">
                                        <div class="row">
                                                <div class="col-sm-6">
                                                    <h2>User <b>Feedbacks</b></h2>
                                                </div>
                                                <div class="col-sm-6">
                                                </div>
                                        </div>
                                </div>

                                <table class="table table-dark">
                                        <thead>
                                                <tr>
                                                        <th>Id</th>
                                                        <th>Name</th>
                                                        <th>Movie</th>
                                                        <th>Feedback</th>
                                                        <th>Star</th>
                                                </tr>
                                        </thead>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                String sql = "SELECT * FROM feedback";
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String id = rs.getString("fid");    
                                                    String name = rs.getString("uname");
                                                    String mname = rs.getString("movie");
                                                    String fback = rs.getString("fback");
                                                    String rating = rs.getString("star");
                                                %>
                                        <tbody>
                                                <tr>
                                                        <td><%=id%></td>
                                                        <td><%=name%></td>
                                                        <td><%=mname%></td>
                                                        <td><%=fback%></td>
                                                        <td><%=rating%></td>
                                                        <td>
               
                                                                <!--<a href="deleteMovie.jsp?id=<%=id%>" onclick="deleteRecord(<%=rs.getString(1)%>);" class="delete"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>-->
                                                        </td>
                                                </tr>
                                                        <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
                                        </tbody>
                                </table>

                                <div class="clearfix">
                                </div>
                        </div>
                                        <div class="table-wrapper">
                                <div class="table-title">
                                        <div class="row">
                                                <div class="col-sm-6">
                                                    <h2>User <b>Ratings</b> for movies</h2>
                                                </div>
                                                <div class="col-sm-6">
                                                </div>
                                        </div>
                                </div>

                                <table class="table table-dark">
                                        <thead>
                                                <tr>
                                                        <th>Movie name</th>
                                                        <th>Overall Rating</th>
                                                </tr>
                                        </thead>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                Statement st1 = con.createStatement();
                                                String sql1 = "SELECT movie_id,movie_name from now_running";
                                                ResultSet rs1 = st1.executeQuery(sql1);
                                                while (rs1.next()) {
                                                    String moid = rs1.getString("movie_id");
                                                    String moname = rs1.getString("movie_name");
                                                String sql = "SELECT ROUND(AVG(star), 1)*2 AS avg FROM feedback WHERE mid="+moid;
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String rating = rs.getString("avg");
                                                %>
                                        <tbody>
                                                <tr>
                                                    <td><%=moname%></td>
                                                        <td><%=rating%> /10.0</td>
                                                </tr>
                                                        <%
                        }
}
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
                                        </tbody>
                                </table>

                                <div class="clearfix">
                                </div>
                        </div>
                </div>        
        </div>
</div>  
<!--Feedback table code end-->
                                        
      <div class="tab-pane fade text-left text-light" id="t3" role="tabpanel" aria-labelledby="profile-tab">
          
          
<!--Seat table code-->
        <div class="container-x2">
                <div class="table-responsive">
                        <div class="table-wrapper">
                                <div class="table-title">
                                        <div class="row">
                                                <div class="col-sm-6">
                                                        <h2>Available  <b>Seats</b></h2>
                                                </div>
                                                <div class="col-sm-6">
                                                </div>
                                        </div>
                                </div>

                                <table class="table table-dark">
                                        <thead>
                                                <tr>
                                                    <th></th>
                                                        <th>Movie Id</th>
                                                        <th>Movie Name</th>
                                                        <th>No of seats available</th>
                                                        <th>Total no of seats</th>
                                                        <th></th>
                                                        
                                                </tr>
                                        </thead>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                Statement st1 = con.createStatement();
                                                String sql = "SELECT * FROM seat";
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String moid = rs.getString("mid");
                                                    String seat = rs.getString("no_of_seats");
                                                        String sql1 = "SELECT movie_name FROM now_running where movie_id="+moid;
                                                        ResultSet rs1 = st1.executeQuery(sql1);
                                                        if (rs1.next()){
                                                        String mname = rs1.getString("movie_name");
                                                %>
                                        <tbody>
                                                <tr>
                                                    <td></td>
                                                        <td><%=moid%></td>
                                                        <td><%=mname%></td>
                                                        <td><%=seat%></td>
                                                        <td>250</td>
                                                        <td>
                                                            <a href="reset.jsp?id=<%=moid%>" onclick="reset(<%=rs.getString(1)%>);" class="btn btn-warning"><span>Reset</span></a></td>
                                                        
                                                </tr>

                                        </tbody>
               <%
                        }
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
                                </table>
                        </div>
                </div>        
        </div>
      </div>
<!--Seat table code end-->

<div class="tab-pane fade text-left text-light" id="t4" role="tabpanel" aria-labelledby="profile-tab">
          
          
<!--Payment tab code-->
        <div class="container-x2">
                <div class="table-responsive">
                        <div class="table-wrapper">
                                <div class="table-title">
                                        <div class="row">
                                                <div class="col-sm-6">
                                                        <h2>Payment  <b>Info</b></h2>
                                                </div>
                                                <div class="col-sm-6">
                                                </div>
                                        </div>
                                </div>

                                <table class="table table-dark">
                                        <thead>
                                                <tr>
                                                    <th></th>
                                                        <th>Movie Id</th>
                                                        <th>Movie Name</th>
                                                        <th>Amount per movie</th>
                                                        <th></th>
                                                        
                                                </tr>
                                        </thead>
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                Statement st1 = con.createStatement();
                                                String sql = "SELECT * FROM now_running";
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String rid = rs.getString("movie_id");
                                                    String rname = rs.getString("movie_name");
                                                        String sql1 = "SELECT SUM(amount) FROM booking WHERE mid="+rid;
                                                        ResultSet rs1 = st1.executeQuery(sql1);
                                                        while(rs1.next()){
                                                            String amount = rs1.getString("SUM(amount)");
                                                    
                                                %>
                                        <tbody>
                                                <tr>
                                                    <td></td>
                                                        <td><%=rid%></td>
                                                        <td><%=rname%></td>
                                                        <td>₹ <%=amount%></td>
                                                        
                                                </tr>

                                        </tbody>
               <%
                        }
}
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
                                </table>
                                <table class="table table-dark">
                                    <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                String sql = "SELECT SUM(amount) as sum FROM booking";
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String sum = rs.getString("sum");                      
                                                %>
                                        <thead>
                                                <tr>
                                                    <th></th>
                                                        <th>Total amount</th>
                                                        <th>₹ <%=sum%></th>
                                                        <th><a id="save" href="" class="btn btn-warning">Download file</a></th>
                                                        
                                                </tr>
                                        </thead>
                                        
                                        <tbody>
                                                <tr>
                                                        
                                                </tr>

                                        </tbody>
               <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
                                </table>
                        </div>
                </div>        
        </div>
<!--Payment tab code end-->
      </div>                               
                                        
      </div>                                       

                                        
    </div><!--tab content end-->
  </div><!-- col-md-8 end -->
</div>

<script>
userDetails='';
$('table tbody tr').each(function(){
  var detail='(';
  $(this).find('td').each(function(){
  	detail+=$(this).html()+',';
  });
  detail=detail.substring(0,detail.length-1);
  detail+=')';
 userDetails+=detail+"\r\n";
});
var a=document.getElementById('save');
a.onclick=function(){
    var a = document.getElementById("save");
    var file = new Blob([userDetails], {type: 'text/plain'});
    a.href = URL.createObjectURL(file);
    a.download = "data.txt";
}
</script>


</body>
</html>