<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<style type="text/css">
.hidden-div {
	display: none
}
</style>
</head>
<body>
	<h1 align="center" class="display-3">Hotel Details</h1>
	<form method="post" action="Payment.jsp" class="form-horizontal">



			

			<c:forEach var="hotell" items="${hotell}">
				
					
					<div class="jumbotron">
						<h1 class="display-5">${hotell.name}</h1>

						<p class="lead">${hotell.location}</p>
						<p>
							Contact No:&nbsp;&nbsp;${hotell.contact_no}
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Facilities:&nbsp;&nbsp;${faci}
							<!--  hr class="my-4"-->
			</c:forEach>

			<c:forEach var="hroo" items="${hroom}">
	
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Room Type:&nbsp;&nbsp;${hroo.type}</p>

				<p>Check IN:&nbsp;&nbsp;${checkin}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check OUT:&nbsp;&nbsp;${checkout}</p>

<p>Adults:&nbsp;&nbsp;${adult}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Childrens:&nbsp;&nbsp;${children}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price:&nbsp;&nbsp;${hroo.price}/-</p>
				<p class="lead">
					<!-- a class="btn btn-primary btn-lg" href="#" role="button" id="bbtn"
					onclick="getElementById('myDIV').style.display = 'block'; this.style.display = 'none'">Book
					Hotel<>Learn
						</a-->
						
						
							<button class="btn btn-primary btn-lg" id="bbtn"
					onclick="getElementById('myDIV').style.display = 'block'; this.style.display = 'none'">Book
					Hotel</button>
			
				</p>
				</div>


				</c:forEach>


		<fieldset>
			<center>
				<div class="hidden-div" id="myDIV">
					<h1>Enter the Details</h1>
					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="Name"> </label>
						<div class="col-md-4">
							<input id="Name" name="Name" type="text" placeholder="name"
								class="form-control input-md" required="">

						</div>
					</div>

					<!-- Multiple Radios (inline) -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="gender"> </label>
						<div class="col-md-4">
							<label class="radio-inline" for="gender-0"> <input
								type="radio" name="gender" id="gender-0" value="male"
								checked="checked"> Male
							</label> <label class="radio-inline" for="gender-1"> <input
								type="radio" name="gender" id="gender-1" value="female">
								Female
							</label> <label class="radio-inline" for="gender-2"> <input
								type="radio" name="gender" id="gender-2" value="others">
								Others
							</label>
						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="mail"> </label>
						<div class="col-md-4">
							<input id="mail" name="email" type="email" placeholder="mail id"
								class="form-control input-md" required="">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-4 control-label" for="conno"> </label>
						<div class="col-md-4">
							<input id="conno" name="conno" type="tel"
								placeholder="Contact Number" class="form-control input-md"
								required="">

						</div>
					</div>

					<!-- Button -->
					<div class="form-group">

						<label class="col-md-4 control-label" for="submit"></label>
						<div class="col-md-4">
							<button id="submit" name="submit" class="btn btn-primary">pay
								now</button>
						</div>
					</div>
					<button id="can"
						onclick="getElementById('myDIV').style.display = 'none';getElementById('bbtn').style.display = 'block'"
						type="button" class="btn btn-danger">Cancel</button>
				</div>

			</center>
		</fieldset>

	</form>



</body>
</html>