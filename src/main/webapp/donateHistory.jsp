<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, java.util.*" %>

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
        <script>
        function filterDonations(type) {
            var rows = document.querySelectorAll('.donation-row');
            rows.forEach(row => {
                if (type === 'All' || row.dataset.type === type) {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
            });
        }
    	</script>
    	<style>
		.header a:hover {
		    text-decoration: underline;
		}
		
		.filter-buttons {
		    text-align: center;
		    margin-bottom: 20px;
		}
		
		.filter-buttons button {
		    background-color: #ff9800;
		    color: white;
		    border: none;
		    padding: 10px 20px;
		    margin: 5px;
		    cursor: pointer;
		    border-radius: 5px;
		    transition: background-color 0.3s ease;
		}
		
		.filter-buttons button:hover {
		    background-color: #e68a00;
		}
		
		.donation-table {
		    width: 100%;
		    border-collapse: collapse;
		    margin-top: 20px;
		    background-color: #333;
		    color: white;
		}
		
		.donation-table th, .donation-table td {
		    padding: 10px;
		    text-align: left;
		}
		
		.donation-table th {
		    background-color: #444;
		}
		
		.donation-table tr {
		    border-bottom: 1px solid #555;
		}
		
		.donation-table tr:nth-child(even) {
		    background-color: #2c2c2c;
		}
		
		.donation-table tr:hover {
		    background-color: #444;
		}
    	</style>
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
                                <p>+91 9876543210</p>
                            </div>
                            <div class="text">
                                <i class="fa fa-envelope"></i>
                                <p>+dasfoundation@gmail.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="top-bar-right">
                            <div class="social">
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
                <a href="index.jsp" class="navbar-brand">DAS</a>
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
                        <h2>Donation History</h2>
                    </div>
                    <div class="col-12">
                        <a href="index.jsp">Home</a>
                        <a href="donateHistory.jsp">Donation History</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        
        <!-- donation history start -->
         <div class="filter-buttons">
        <button onclick="filterDonations('All')">All</button>
        <button onclick="filterDonations('Food')">Food</button>
        <button onclick="filterDonations('Clothes')">Clothes</button>
        <button onclick="filterDonations('Books')">Books</button>
    	</div>
        
        <table class="donation-table">
        <thead>
            <tr>
            	<th>ID</th>
                <th>Organization</th>
                <th>Address</th>
                <th>Type</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <%
                String dbURL = "jdbc:mysql://localhost:3306/donation?useSSL=true";
                String dbUser = "root";
                String dbPassword = "Christmastree@03";

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                    String sql = "SELECT organization_name, organization_address, donation_type, donation_date, donation_id FROM donations";
                    PreparedStatement statement = connection.prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery();

                    while (resultSet.next()) {
                        String organizationName = resultSet.getString("organization_name");
                        String organizationAddress = resultSet.getString("organization_address");
                        String donationType = resultSet.getString("donation_type");
                        String donationId = resultSet.getString("donation_id");
                        
                        Timestamp donationDate = resultSet.getTimestamp("donation_date");

                        out.println("<tr class='donation-row' data-type='" + donationType + "'>");
                        out.println("<td>" + donationId + "</td>");
                        out.println("<td>" + organizationName + "</td>");
                        out.println("<td>" + organizationAddress + "</td>");
                        out.println("<td>" + donationType + "</td>");
                        out.println("<td>" + donationDate + "</td>");
                        out.println("</tr>");
                    }

                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </tbody>
    </table>
        <!-- donation history end -->
        
        <!-- footer Start -->
		<div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-contact">
                            <h2>Our Head Office</h2>
                            <p><i class="fa fa-map-marker-alt"></i>Hyderabad, India</p>
                            <p><i class="fa fa-phone-alt"></i>+91 9876543210</p>
                            <p><i class="fa fa-envelope"></i>+dasfoundation@gmail.com</p>
                            <div class="footer-social">
                                <a class="btn btn-custom" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-custom" href=""><i class="fab fa-youtube"></i></a>
                                <a class="btn btn-custom" href=""><i class="fab fa-instagram"></i></a>
                                <a class="btn btn-custom" href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-link">
                            <h2>Popular Links</h2>
                            <a href="about.jsp">About Us</a>
                            <a href="contact.jsp">Contact Us</a>
                            <a href="causes.jsp">Popular Causes</a>
                            <a href="event.jsp">Upcoming Events</a>
                            <a href="blog.jsp">Latest Blog</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-link">
                            <h2>Useful Links</h2>
                            <a href="">Terms of use</a>
                            <a href="">Privacy policy</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-newsletter">
                            <h2>Newsletter</h2>
                            <form>
                                <input class="form-control" placeholder="Email goes here">
                                <button class="btn btn-custom">Submit</button>
                                <label>Don't worry, we don't spam!</label>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container copyright">
                <div class="row">
                    <div class="col-md-6">
                        <p>&copy; <a href="">DAS</a>, All Right Reserved.</p>
                    </div>
                    <div class="col-md-6">
                        <p>Designed By <a href="">Abhiram</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to top button -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- Pre Loader -->
        <div id="loader" class="show">
            <div class="loader"></div>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/parallax/parallax.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
</body>
</html>