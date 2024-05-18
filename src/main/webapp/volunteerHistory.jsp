<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>HELPZ</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Top Bar Start -->
        <div class="top-bar d-none d-md-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="top-bar-left">
                            <div class="text">
                                <i class="fa fa-phone-alt"></i>
                                <p>+91 0000000000</p>
                            </div>
                            <div class="text">
                                <i class="fa fa-envelope"></i>
                                <p>+helpzsupport@gmail.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="top-bar-right">
                            <div class="social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Bar End -->

        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div class="container-fluid">
                <a href="index.jsp" class="navbar-brand">Helpz</a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">
                        <a href="index.jsp" class="nav-item nav-link">Home</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <a href="causes.jsp" class="nav-item nav-link">Causes</a>
                        <a href="event.jsp" class="nav-item nav-link">Events</a>
                        <a href="blog.jsp" class="nav-item nav-link active">Blog</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu">
                                <a href="single.jsp" class="dropdown-item">Detail Page</a>
                                <a href="service.jsp" class="dropdown-item">What We Do</a>
                                <a href="team.jsp" class="dropdown-item">Meet The Team</a>
                                <a href="donate.jsp" class="dropdown-item">Donate Now</a>
                                <a href="volunteer.jsp" class="dropdown-item">Become A Volunteer</a>
                            </div>
                        </div>
                        <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Profile</a>
                            <div class="dropdown-menu">
    							<% if (session.getAttribute("name") != null) { %>
        						<li class="nav-item "><a class="nav-Link py-3 px-0 px-lg-3 rounded dropdown-item" href="profile.jsp"><%= session.getAttribute("name") %></a>
        						<a href="donateHistory.jsp" class="dropdown-item">Donation History</a>
                                <a href="organizations.jsp" class="dropdown-item">Your Organizations</a>
                                <a href="volunteerHistory.jsp" class="dropdown-item">volunteer History</a>
        						</li>
    							<% } else { %>
        							<a href="login.jsp" class="dropdown-item">Sign in</a>
        							<a href="register.jsp" class="dropdown-item">Sign up</a>
    							<% } %>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->
        
        <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Volunteer History</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Home</a>
                        <a href="">Volunteer History</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
</body>
</html>