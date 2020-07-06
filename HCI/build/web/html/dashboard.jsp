<%-- 
    Document   : dashboard
    Created on : 6 Apr, 2020, 1:29:44 PM
    Author     : Aditya Dhole
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Dashboard</title>
    <!-- Bootstrap Core CSS -->
    <link href="./html/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="./plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- toast CSS -->
    <link href="./plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="./plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="./plugins/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="./plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
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
                    <!-- Logo -->
                    <a class="logo" href="dashboard.html">
                     
                        <b>
                           
                            <img src="../plugins/images/admin-logo.png" alt="home" class="dark-logo" />
                           
                            <img src="./plugins/images/mit-logo.jpg" alt="home" class="light-logo" />
                        </b>
                 
                        <span class="hidden-xs">
                        
                            <img src="../plugins/images/admin-text.png" alt="home" class="dark-logo" />
                         
                            <img src="./plugins/images/logotext.jpg" alt="home" class="light-logo" />
                        </span> 
                    </a>
                </div>
            
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="nav-toggler open-close waves-effect waves-light hidden-md hidden-lg" href="javascript:void(0)"><i class="fa fa-bars"></i></a>
                    </li>
                    <li>
                        <form role="search" class="app-search hidden-sm hidden-xs m-r-10">
                            <input type="text" placeholder="Search..." class="form-control"> 
                            <a href="">
                                <i class="fa fa-search"></i>
                            </a> 
                        </form>
                    </li>
                    <li>
                        <a class="profile-pic" href="#"> <img src="./plugins/images/users/Dhole.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">Aditya</b></a>
                    </li>
                </ul>
            </div>
         
        </nav>
              <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="Servlet11" class="waves-effect"><i class="fa fa-clock-o fa-fw" aria-hidden="true"></i>Dashboard</a>
                    </li>
                    <li>
                        <a href="Servlet2" class="waves-effect"><i class="fa fa-user fa-fw" aria-hidden="true"></i>Profile</a>
                    </li>
                    <li>
                        <a href="Servlet3" class="waves-effect"><i class="fa fa-table fa-fw" aria-hidden="true"></i>Class Schedule</a>
                    </li>
                    <li>
                        <a href="Servlet4" class="waves-effect"><i class="fa fa-font fa-fw" aria-hidden="true"></i>Exam Schedule</a>
                    </li>
                    <li>
                        <a href="Servlet5" class="waves-effect"><i class="fa fa-globe fa-fw" aria-hidden="true"></i>News on Campus</a>
                    </li>
                    <li>
                        <a href="Servlet6" class="waves-effect"><i class="fa fa-columns fa-fw" aria-hidden="true"></i>Feedback Form</a>
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
                        <h4 class="page-title">Dashboard</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">

                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                        </ol>
                    </div>
            
                </div>
               
                <div class="row">
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Lectures</h3>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-success"></i> <span class="counter text-success">${l_attend}</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Practicals</h3>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash2"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-purple"></i> <span class="counter text-purple">${p_attend}</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 col-xs-12">
                        <div class="white-box analytics-info">
                            <h3 class="box-title">Total Classes</h3>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id="sparklinedash3"></div>
                                </li>
                                <li class="text-right"><i class="ti-arrow-up text-info"></i> <span class="counter text-info">${t_attend}</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
             
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <h3 class="box-title">Your attendance this Semester</h3>
                            <ul class="list-inline text-right">
                                <li>
                                    <h5><i class="fa fa-circle m-r-5 text-info"></i>Minmum expected</h5> </li>
                                <li>
                                    <h5><i class="fa fa-circle m-r-5 text-inverse"></i>Your</h5> </li>
                            </ul>
                            <div id="ct-visits" style="height: 405px;"></div>
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="white-box">
                            <div class="col-md-3 col-sm-4 col-xs-6 pull-right">
                                <select class="form-control pull-right row b-none">
                                    <option>December 2019</option>
                                    <option>January 2020</option>
                                    <option>March 2020</option>
                                    <option>April 2020</option>
                                  
                                </select>
                            </div>
                            <h3 class="box-title">Attendance Record</h3>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>SUBJECT NAME</th>
                                            <th>ATTENDED</th>
                                            <th>TOTAL</th>
                                            <th>PERCENTAGE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            
                                            <td class="txt-oflo">${sub1}</td>
                                            <td>${sub1L}</td>
                                            <td class="txt-oflo">${sub1T}</td>
                                            <td><span class="text-success">${sub1P}</span></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td class="txt-oflo">${sub2}</td>
                                            <td>${sub2L}</td>
                                            <td class="txt-oflo">${sub2T}</td>
                                            <td><span class="text-info">${sub2P}</span></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td class="txt-oflo">${sub3}</td>
                                            <td>${sub3L}</td>
                                            <td class="txt-oflo">${sub3T}</td>
                                            <td><span class="text-info">${sub3P}</span></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td class="txt-oflo">${sub4}</td>
                                            <td>${sub4L}</td>
                                            <td class="txt-oflo">${sub4T}</td>
                                            <td><span class="text-danger">${sub4P}</span></td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td class="txt-oflo">${sub5}</td>
                                            <td>${sub5L}</td>
                                            <td class="txt-oflo">${sub5T}</td>
                                            <td><span class="text-success">${sub5P}</span></td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td class="txt-oflo">${sub6}</td>
                                            <td>${sub6L}</td>
                                            <td class="txt-oflo">${sub6T}</td>
                                            <td><span class="text-success">${sub6P}</span></td>
                                        </tr
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
        
                <div class="row">
                    <!-- .col -->
                    <div class="col-md-12 col-lg-8 col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">Noticeboard</h3>
                            <div class="comment-center p-t-10">
                                <div class="comment-body">
                                    <div class="user-img"> <img src="./plugins/images/users/ml.png  " alt="user" class="img-circle">
                                    </div>
                                    <div class="mail-contnet">
                                        <h5>Shilpa Sonawani</h5><span class="time">10:50 AM   30 March 2020</span>
                                        <br/><span class="mail-desc">Please submit all your ML assignments in the following week! Check Google Classroom for details on how to submit.</span> <a href="javacript:void(0)" class="btn btn btn-rounded btn-default btn-outline m-r-5"><i class="ti-check text-success m-r-5"></i>Dismiss</a><a href="javacript:void(0)" class="btn-rounded btn btn-default btn-outline"><i class="ti-close text-danger m-r-5"></i> Mark as Important</a>
                                    </div>
                                </div>
                                <div class="comment-body">
                                    <div class="user-img"> <img src="./plugins/images/users/hci.png" alt="user" class="img-circle">
                                    </div>
                                    <div class="mail-contnet">
                                        <h5>Archana Dhoke</h5><span class="time">05:10 PM   2 April 2020</span>
                                        <br/><span class="mail-desc"> Skype meeting arranged tomorrow at 11 AM to resolve your doubts regarding HCI submissions. Do atttend!</span>  <a href="javacript:void(0)" class="btn btn btn-rounded btn-default btn-outline m-r-5"><i class="ti-check text-success m-r-5"></i>Dismiss</a><a href="javacript:void(0)" class="btn-rounded btn btn-default btn-outline"><i class="ti-close text-danger m-r-5"></i> Mark as Important</a>
                                    </div>
                                </div>
                                <div class="comment-body b-none">
                                    <div class="user-img"> <img src="./plugins/images/users/ics.jpg" alt="user" class="img-circle">
                                    </div>
                                    <div class="mail-contnet">
                                        <h5>Rajan Jamgekar</h5><span class="time">11:00 AM   3 April 2020</span>
                                        <br/><span class="mail-desc">ICS Mini-Project must be finalized latest by today evening. Fill in the Google Sheet shared with you at the earliest.</span> <a href="javacript:void(0)" class="btn btn btn-rounded btn-default btn-outline m-r-5"><i class="ti-check text-success m-r-5"></i>Dismiss</a><a href="javacript:void(0)" class="btn-rounded btn btn-default btn-outline"><i class="ti-close text-danger m-r-5"></i> Mark as Important</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="panel">
                            <div class="sk-chat-widgets">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        FACULTY MEMBERS
                                    </div>
                                    <div class="panel-body">
                                        <ul class="chatonline">
                                            <li>
                                                <div class="call-chat">
                                                   
                                                    <button class="btn btn-info btn-circle btn-lg" type="button"><i class="fa fa-comments-o"></i></button>
                                                </div>
                                                <a href="javascript:void(0)"><img src="./plugins/images/users/ml.png" alt="user-img" class="img-circle"> <span>Shilpa Sonawani<small class="text-success">ML</small></span></a>
                                            </li>
                                            <li>
                                                <div class="call-chat">
                                                    
                                                    <button class="btn btn-info btn-circle btn-lg" type="button"><i class="fa fa-comments-o"></i></button>
                                                </div>
                                                <a href="javascript:void(0)"><img src="./plugins/images/users/ics.jpg" alt="user-img" class="img-circle"> <span>Rajan Jamgekar <small class="text-warning">ICS</small></span></a>
                                            </li>
                                            <li>
                                                <div class="call-chat">
                                                    
                                                    <button class="btn btn-info btn-circle btn-lg" type="button"><i class="fa fa-comments-o"></i></button>
                                                </div>
                                                <a href="javascript:void(0)"><img src="./plugins/images/users/sco.png" alt="user-img" class="img-circle"> <span>Prakash Waghmode<small class="text-danger">SCOA</small></span></a>
                                            </li>
                                            <li>
                                                <div class="call-chat">
                                                   
                                                    <button class="btn btn-info btn-circle btn-lg" type="button"><i class="fa fa-comments-o"></i></button>
                                                </div>
                                                <a href="javascript:void(0)"><img src="./plugins/images/users/hci.png" alt="user-img" class="img-circle"> <span>Archana Dhoke <small class="text-muted">HCI</small></span></a>
                                            </li>
                                          
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
           
                </div>
            </div>

            <footer class="footer text-center"> 2020 &copy; MIT-ERP brought to you by The ERP Division, MIT-Pune </footer>
        </div>
    
    </div>
  
    <script src="./plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="./html/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="./plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="./html/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="./html/js/waves.js"></script>
    <!--Counter js -->
    <script src="./plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="./plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!-- chartist chart -->
    <script src="./plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
    <script src="./plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="./plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="./html/js/custom.min.js"></script>
    <script src="./html/js/dashboard1.js"></script>
    <script src="./plugins/bower_components/toast-master/js/jquery.toast.js"></script>
</body>

</html>
