<%-- 
    Document   : classtt
    Created on : 6 Apr, 2020, 8:50:09 PM
    Author     : Aditya Dhole
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Class Schedule</title>
    <!-- Bootstrap Core CSS -->
    <link href="./html/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="./plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="./html/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="./html/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="./html/css/colors/default.css" id="theme" rel="stylesheet">
    
</head>

<body class="fix-header">
    
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div>
  
    <div id="wrapper">

        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
               
                    <a class="logo" href="dashboard.html">
                    <b>
                           
                          <img src="./plugins/images/mit-logo.jpg" alt="home"
                                class="light-logo" />
                        </b>
                       <img src="./plugins/images/logotext.jpg" alt="home"
                                class="light-logo" />
                        </span> </a>
                </div>
        
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="nav-toggler open-close waves-effect waves-light hidden-md hidden-lg"
                            href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                    </li>
                    <li>
                        <form role="search" class="app-search hidden-sm hidden-xs m-r-10">
                            <input type="text" placeholder="Search..." class="form-control"> <a href=""><i
                                    class="fa fa-search"></i></a> </form>
                    </li>
                    <li>
                        <a class="profile-pic" href="#"> <img src="./plugins/images/users/Dhole.jpg" alt="user-img"
                                width="36" class="img-circle"><b class="hidden-xs">Aditya</b></a>
                    </li>
                </ul>
            </div>
          
        </nav>
   
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span
                            class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="Servlet11" class="waves-effect"><i class="fa fa-clock-o fa-fw"
                                aria-hidden="true"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="Servlet2" class="waves-effect"><i class="fa fa-user fa-fw"
                                aria-hidden="true"></i>Profile</a>
                    </li>
                    <li>
                        <a href="Servlet3" class="waves-effect"><i class="fa fa-table fa-fw"
                                aria-hidden="true"></i>Class Schedule</a>
                    </li>
                    <li>
                        <a href="Servlet4" class="waves-effect"><i class="fa fa-font fa-fw"
                                aria-hidden="true"></i>Exam Schedule</a>
                    </li>
                    <li>
                        <a href="Servlet5" class="waves-effect"><i class="fa fa-globe fa-fw"
                                aria-hidden="true"></i>News on Campus</a>
                    </li>
                    <li>
                        <a href="Servlet6" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i>Feedback Form</a>
                    </li>
                    
                </ul>
                <div class="center p-20">
                  
                </div>
            </div>
        </div>
       
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Clas Schedule</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                       
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li class="active">Class Schedule</li>
                        </ol>
                    </div>

                </div>
       
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">BE-COMPUTER</h3>
                            <p class="text-muted">Semester <code>8</code></p>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            
                                            <th>Day</th>
                                            <th>Time Slot</th>
                                            <th>Subject</th>
                                            <th>Lecture/Practical</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                  
                                            <td rowspan="3">${day1}</td>
                                            <td>${day1_slot1}</td>
                                            <td>${day1_sub1}</td>
                                            <td>${day1_type1}</td>
                                        </tr>
                                        <tr>
                                           
                                            <td>${day1_slot2}</td>
                                            <td>${day1_sub2}</td>
                                            <td>${day1_type3}</td>
                                            >
                                        </tr>
                                        <tr>
                                            
                                            <td>${day1_slot3}</td>
                                            <td>${day1_sub3}</td>
                                            <td>${day1_type3}</td>
                                            
                                        </tr>
                                        <tr>
                                           
                                            <td rowspan="2">${day2}</td>
                                            <td>${day2_slot1}</td>
                                            <td>${day2_sub1}</td>
                                            <td>${day2_type1}</td>
                                        </tr>
                                        <tr>
                                        
                                            <td>${day2_slot2}</td>
                                            <td>${day2_sub2}</td>
                                            <td>${day2_type2}</td>
                                            
                                        </tr>
                                        <tr>
                                            
                                            <td rowspan="2">${day3}</td>
                                            <td>${day3_slot1}</td>
                                            <td>${day3_sub1}</td>
                                            <td>${day3_type1}</td>
                                        </tr>
                                        
                                        <tr>
                                            
                                            <td>${day3_slot2}</td>
                                            <td>${day3_sub2}</td>
                                            <td>${day3_type2}</td>
                                        </tr>
                                        
                                        <tr>
                                            
                                            <td rowspan="3">${day4}</td>
                                            <td>${day4_slot1}</td>
                                            <td>${day4_sub1}</td>
                                            <td>${day4_type1}</td>
                                        </tr>
                                        
                                        <tr>
                                            
                                            <td>${day4_slot2}</td>
                                            <td>${day4_sub2}</td>
                                            <td>${day4_type2}</td>
                                        </tr>
                                        <tr>
                                            
                                            <td>${day4_slot3}</td>
                                            <td>${day4_sub3}</td>
                                            <td>${day4_type3}</td>
                                        </tr>
                                        
                                        <tr>
                                            
                                            <td rowspan="2">${day5}</td>
                                            <td>${day5_slot1}</td>
                                            <td>${day5_sub1}</td>
                                            <td>${day5_type1}</td>
                                        </tr>
                                        
                                        <tr>
                                            
                                           
                                            <td>${day5_slot2}</td>
                                            <td>${day5_sub2}</td>
                                            <td>${day5_type2}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
        
            </div>
           
            <footer class="footer text-center"> 2020 &copy; MIT-ERP brought to you by The ERP Division, MIT-Pune</footer>
        </div>
     
    </div>

    <!-- jQuery -->
    <script src="./plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="./html/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="./plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="./html/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="./html/js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="./html/js/custom.min.js"></script>
</body>

</html>