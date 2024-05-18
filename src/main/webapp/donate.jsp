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
        <!--  map -->
        <link href="https://api.tomtom.com/maps-sdk-for-web/cdn/6.x/6.6.0/maps/maps.css" rel="stylesheet" type="text/css">
	    <script src="https://api.tomtom.com/maps-sdk-for-web/cdn/6.x/6.6.0/maps/maps-web.min.js"></script>
	    <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet">
	    <script src="js/stylesmap.js" type="text/javascript"></script>
	    <link href="css/stylesmap.css" rel="stylesheet" type="text/css">
	    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	    <!-- Template Stylesheet -->
	    <link href="css/style.css" rel="stylesheet">
	   	<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

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
                        <a href="blog.jsp" class="nav-item nav-link">Blog</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Pages</a>
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
                        <h2>Donate Now</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Home</a>
                        <a href="">Donate</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        
        
        <!-- Donate Start -->
        <div class="container">
            <div class="donate" data-parallax="scroll" data-image-src="img/donate.jpg">
                <div class="row align-items-center">
                    <div class="col-lg-7">
                        <div class="donate-content">
                            <div class="section-header">
                                <p>Donate Now</p>
                                <h2>Let's donate to needy people for better lives</h2>
                            </div>
                            <div class="donate-text">
                                <p>
                                    In donations, the quantity doesn't matter.
                                    <br>What matters is the urge to donate what we can to the needy.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="donate-form">
                            <form>
                                <div class="control-group">
                                    <input type="text" class="form-control" placeholder="Name" required="required" />
                                </div>
                                <div class="control-group">
                                    <input type="email" class="form-control" placeholder="Email" required="required" />
                                </div>
                                <div class="control-group">
                                    <input type="text" class="form-control" placeholder="Organization Name" required="required" />
                                </div>
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                    <label class="btn btn-custom ">
                                        <a class="dropdown-item" onclick="selectDonationType('food')">
                                        <input type="radio" id="food" name="type" value="Food" required>
                						<label for="food">Food</label>
                						</a>
                                    </label>
                                    <label class="btn btn-custom">
                                        <a class="dropdown-item" onclick="selectDonationType('clothes')">
                                        <input type="radio" id="clothes" name="type" value="Clothes" required>
                						<label for="clothes">Clothes</label>
                                        </a>
                                    </label>
                                    <label class="btn btn-custom">
                                        <a class="dropdown-item" onclick="selectDonationType('food')">
                                        <input type="radio" id="books" name="type" value="Books" required>
                						<label for="books">Books</label>
                                        </a>
                                    </label>
                                </div>
                                <div>
                                    <button class="btn btn-custom" type="submit">Donate Now</button>
                                </div>
                            </form>
                            <div id="popup" class="popup" type="hidden">
						        <p>Donation Successful! Your donation ID is <span id="donationId"></span></p>
						        <button onclick="closePopup()">OK</button>
						    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Donate End -->
        
        
        
        <div class="causes">
            <div class="container">
                <div class="section-header text-center">
                    <h2>Trusted Organizations in India</h2>
                </div>
                <div class="owl-carousel causes-carousel">
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/caus-1.jpg" alt="Image">
                        </div>
                        
                        <div class="causes-text">
                            <h3>SevaDeep Foundation</h3>
                            <p>In keeping with the company's core vision of Innovate to make a better tomorrow, Sevadeep aims to encourage and enhance the culture of giving, leading to the multiplication of social impact</p>
                        </div>
                        <div class="organization">
					            <form action="DonateServlet" method="post" class="causes-btn">
					            <input type="hidden" name="organizationName" value="SevaDeep Foundation">
            					<input type="hidden" name="organizationAddress" value="123 SevaDeep St, City, Country">
            					
					            <a class = "btn btn-custom">
					            <select name="donationType" required>
					                <option value="Food">Food</option>
					                <option value="Clothes">Clothes</option>
					                <option value="Books">Books</option>
					            </select></a>
					           	<a class="btn btn-custom"><button class="donate-button btn btn-custom" onclick="donate()" type="submit">Donate Now</button></a>

					        </form>
					    </div>
                    </div>
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/caus-2.jpg" alt="Image">
                        </div>
                        
                        <div class="causes-text">
                            <h3>Goonj (NGO)</h3>
                            <p>Goonj is a non-governmental organisation headquartered in New Delhi, India, that undertakes disaster relief, humanitarian aid and community development in parts of 23 states across India. Goonj focuses on clothing as a basic but unaddressed need.</p>
                        </div>
                        <div class="organization">
					            <form action="DonateServlet" method="post" class="causes-btn">
					            <input type="hidden" name="organizationName" value="Goonj (NGO)">
            					<input type="hidden" name="organizationAddress" value="123 Goonj (NGO) St, City, Country">
            					
					            <a class = "btn btn-custom">
					            <select name="donationType" required>
					                <option value="Food">Food</option>
					                <option value="Clothes">Clothes</option>
					                <option value="Books">Books</option>
					            </select></a>
					           	<a class="btn btn-custom"><button class="btn btn-custom" type="submit">Donate Now</button></a>
					        </form>
					    </div>
                    </div>
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/caus-3.jpg" alt="Image">
                        </div>
                        
                        <div class="causes-text">
                            <h3>Uday Foundation</h3>
                            <p>At Uday Foundation, our mission is to provide free and nutritious meals to underprivileged families of hospital patients and children. Support our cause by donating food to feed the hungry.</p>
                        </div>
                        <div class="causes-btn">
                            <a class="btn btn-custom">Learn More</a>
                            <a class="btn btn-custom" href="donate.jsp">Donate Now</a>
                        </div>
                    </div>
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/caus-4.jpg" alt="Image">
                        </div>
                       
                        <div class="causes-text">
                            <h3>We For Change Trust</h3>
                            <p>A charitable organization with an urge For a Better Tomorrow. We For Change Trust knows that our strength lies not only in the words we stand by, but most importantly through the actions of our initiatives.</p>
                        </div>
                        <div class="organization">
					            <form action="DonateServlet" method="post" class="causes-btn">
					            <input type="hidden" name="organizationName" value="Goonj (NGO)">
            					<input type="hidden" name="organizationAddress" value="123 Goonj (NGO) St, City, Country">
            					
					            <a class = "btn btn-custom">
					            <select name="donationType" required>
					                <option value="Food">Food</option>
					                <option value="Clothes">Clothes</option>
					                <option value="Books">Books</option>
					            </select></a>
					           	<a class="btn btn-custom"><button class="btn btn-custom" type="submit">Donate Now</button></a>
					        </form>
					    </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- organizations end -->
        
        <!-- map -->
		 <div class='control-panel'>
        <div class='heading'>
            
        </div>
        <div id='store-list'></div>
    </div>
    <div class='map' id='map'></div>
    <script>
        const apiKey = 'j44ZxVsfKcHVNkZ0Cw7zsfGbGIa7kQcG';
        const map = tt.map({
            key: apiKey,
            container: 'map',
            center: [4.573040, 52.138950],
            zoom: 9
        });

        const markersCity = [];
        const list = document.getElementById('store-list');

        stores.features.forEach(function (store, index) {
            const city = store.properties.city;
            const address = store.properties.address;
            const location = [store.geometry.coordinates[1], store.geometry.coordinates[0]]; // Interchanged latitude and longitude
            const marker = new tt.Marker().setLngLat(location).setPopup(new tt.Popup({
                offset: 35
            }).setHTML(address)).addTo(map);
            markersCity[index] = {
                marker,
                city
            };

            let cityStoresList = document.getElementById(city);
            if (cityStoresList === null) {
                const cityStoresListHeading = list.appendChild(document.createElement('h3'));
                cityStoresListHeading.innerHTML = city;
                cityStoresList = list.appendChild(document.createElement('div'));
                cityStoresList.id = city;
                cityStoresList.className = 'list-entries-container';
                cityStoresListHeading.addEventListener('click', function (e) {
                    map.fitBounds(getMarkersBoundsForCity(e.target.innerText), {
                        padding: 50
                    });
                });
            }

            const details = buildLocation(cityStoresList, address);

            marker.getElement().addEventListener('click', function () {
                const activeItem = document.getElementsByClassName('selected');
                if (activeItem[0]) {
                    activeItem[0].classList.remove('selected');
                }
                details.classList.add('selected');
                openCityTab(city);
            });

            details.addEventListener('click', function () {
                const activeItem = document.getElementsByClassName('selected');
                if (activeItem[0]) {
                    activeItem[0].classList.remove('selected');
                }
                details.classList.add('selected');
                map.easeTo({
                    center: marker.getLngLat(),
                    zoom: 18
                });
                closeAllPopups();
                marker.togglePopup();

            });

            function buildLocation(htmlParent, text) {
                const details = htmlParent.appendChild(document.createElement('a'));
                details.href = '#';
                details.className = 'list-entry';
                details.innerHTML = text;
                return details;
            }

            function closeAllPopups() {
                markersCity.forEach(markerCity => {
                    if (markerCity.marker.getPopup().isOpen()) {
                        markerCity.marker.togglePopup();
                    }
                });
            }

            function getMarkersBoundsForCity(city) {
                const bounds = new tt.LngLatBounds();
                markersCity.forEach(markerCity => {
                    if (markerCity.city === city) {
                        bounds.extend(markerCity.marker.getLngLat());
                    }
                });
                return bounds;
            }

            function openCityTab(selected_id) {
                const storeListElement = $('#store-list');
                const citiesListDiv = storeListElement.find('div.list-entries-container');
                for (let activeCityIndex = 0; activeCityIndex < citiesListDiv.length; activeCityIndex++) {
                    if (citiesListDiv[activeCityIndex].id === selected_id) {
                        storeListElement.accordion('option', {
                            'active': activeCityIndex
                        });
                    }
                }
            }
        });

        $('#store-list').accordion({
            'icons': {
                'header': 'ui-icon-plus',
                'activeHeader': 'ui-icon-minus'
            },
            'heightStyle': 'content',
            'collapsible': true,
            'active': false
        });
    </script>
    
		<!-- map end --> 

		
		  
        <!-- Footer Start -->
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
