<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Profile</title>
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
                       <span class="hidden-xs">
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
                        <h4 class="page-title">Profile page</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        
                        
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li class="active">Profile Page</li>
                        </ol>
                    </div>
                </div>
             
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <div class="white-box">
                            <div class="user-bg"> <img width="100%" alt="user" src="./plugins/images/large/img2.jpg">
                                <div class="overlay-box">                                                                                                                                               
                                    <div class="user-content">
                                        <a href="javascript:void(0)"><img src="./plugins/images/users/Dhole.jpg"
                                                class="thumb-lg img-circle" alt="img"></a>
                                        <h4 class="text-white">Aditya Dhole</h4>
                                        <h5 class="text-white">aditya.dhole@mitpune.edu.in</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="user-btm-box">
                                <center>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-purple"><i class="ti-facebook"></i></p>
                                    <h1>94209</h1>
                                </div>
                                <div class="col-md-4 col-sm-4 text-center">
                                    <p class="text-blue"><i class="ti-twitter"></i></p>
                                    <h1>47102</h1>
                                </div>
                                </center>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                            <form class="form-horizontal form-material">
                                <div class="form-group">
                                    <label class="col-md-12">Full Name</label>
                                    <div class="col-md-12">
                                        <input type="text" value="${fname}"
                                            class="form-control form-control-line"> </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="col-md-12">Gender</label>
                                    <div class="col-md-12">
                                        <input type="text" value=${gender}
                                            class="form-control form-control-line"> </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="example-email" class="col-md-12">Date of Birth</label>
                                    <div class="col-md-12">
                                        <input type="text" value=${DOB}
                                            class="form-control form-control-line" name="example-email"
                                            id="example-email"> </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Class</label>
                                    <div class="col-md-12">
                                        <input type="text" value=${cls} class="form-control form-control-line">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-12">Branch</label>
                                    <div class="col-md-12">
                                        <input type="text" value="${branch}"
                                            class="form-control form-control-line"> </div>
                                </div>
                            
                                
                                <div class="form-group">
                                      <label class="col-md-12">Home Town</label>
                                      <div class="col-md-12">
                                          <input type="text" value=${htown}
                                              class="form-control form-control-line"> </div>
                                  </div>
                             
                               
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <button class="btn btn-success">Print my information</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
     
            </div>
         
            <footer class="footer text-center"> 2020 &copy; MIT-ERP brought to you by The ERP Division, MIT-Pune </footer>
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