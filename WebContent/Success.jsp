<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Hotel Management System</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400|Playfair+Display:400,700"
	rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">




<!-- Theme Style -->
<link rel="stylesheet" href="css/style.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
	$(document).ready(function() {
		$("#checkin_date").datepicker({
			numberOfMonths : 1,
			minDate : 0,
			onSelect : function(selected) {
				$("#checkout_date").datepicker("option", "minDate", selected)
			}
		});
		$("#checkout_date").datepicker({
			numberOfMonths : 1,
			minDate : 0,
			onSelect : function(selected) {
				$("#checkin_date").datepicker("option", "maxDate", selected)
			}
		});
	});
</script>
</head>
<body>

	<header class="site-header">
	<div class="container-fluid">
		<div class="row">

			<div class="col-8">


				<span></span> <span></span> <span></span>
			</div>
			<!-- END menu-toggle -->
	</header>
	<!-- END head -->


	<!-- END section -->

	<section class="section bg-light" id="next">
	<div class="container">
		<div class="row">
			<div class="col-md-7 mx-auto text-center mb-5">
				<h2>Find Your Ideal Hotel</h2>
				<p style="color: red; font-size: 23px;">${error}
				<p>
			</div>
		</div>
		<div class="row">
			<div class="block-32">

				<form action="SearchServlet" method="post">
					<div class="row">

						<div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
							<label for="location" class="font-weight-bold text-black">Location</label>
							<div class="field-icon-wrap">
								<div class="icon">
									<span class="icon-calendar"></span>
								</div>
								<input type="text" id="location" class="form-control"
									name="location" required="">
							</div>
						</div>


						<div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
							<label for="checkin_date" class="font-weight-bold text-black">Check
								In</label>
							<div class="field-icon-wrap">
								<div class="icon">
									<span class="icon-calendar"></span>
								</div>
								<input type="text" id="checkin_date" class="form-control"
									name="checkin" required="">
							</div>
						</div>
						<div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
							<label for="checkout_date" class="font-weight-bold text-black">Check
								Out</label>
							<div class="field-icon-wrap">
								<div class="icon">
									<span class="icon-calendar"></span>
								</div>
								<input type="text" id="checkout_date" class="form-control"
									name="checkout" required="">
							</div>
						</div>
						<div class="col-md-6 mb-3 mb-md-0 col-lg-3">
							<div class="row">
								<div class="col-md-6 mb-3 mb-md-0">
									<label for="adults" class="font-weight-bold text-black">Adults</label>
									<div class="field-icon-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="adults" id="adults" class="form-control">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4+">4+</option>
										</select>
									</div>
								</div>
								<div class="col-md-6 mb-3 mb-md-0">
									<label for="children" class="font-weight-bold text-black">Children</label>
									<div class="field-icon-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>
										<select name="children" id="children" class="form-control">
											<option value="0">0</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4+">4+</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<br>
						<div class="col-md-6 col-lg-3 mx-auto text-center">
							<br>
							<button class="btn btn-primary btn-block text-white">Search
								Hotels</button>
						</div>
					</div>
				</form>
			</div>


		</div>
	</div>
	</section>




	<!-- END section -->


	<!-- END section -->



</body>
</html>