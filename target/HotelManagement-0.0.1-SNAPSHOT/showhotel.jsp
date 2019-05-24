<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Hotels</title>
<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="bootstrap.css">
</head>
<body>
	<h1 class="text" align="center">Available Hotels</h1>



	<br>
	<form method="post" action="BookingServlet">

		<div class="container">
			<h3 class="mt-3 pb-3 mb-4 font-italic border-bottom"></h3>
			<div class="row">


				<table style="width: 80%" align="center">


					<c:forEach var="hel" items="${HOTEL}">




						<div class="col-md-4">
							<div class="card bg-light" style="width: 22rem;">
								<img class="card-img-top" width="400" height="200"
									src="data:image/jpg;base64,${hel.imageStr}">
								<div class="card-body">
									<h5 class="card-title border-bottom pb-3">${hel.name}</h5>

									<p class="card-text" align="justify">
										<img src="location.svg">${hel.location}</p>
									<!-- p class="card-text">${hel.city}</p-->
									<p class="card-text">
										<img src="phone.svg"> ${hel.contact_no}
									</p>

									<button type="submit" class="btn btn-sm btn-info float-right"
										value=${hel.id } name="id">
										view <i class="fas fa-angle-double-right"></i>
									</button>

								</div>
							</div>
						</div>
						</div>


						</div>

					</c:forEach>
				</table>
	</form>


</body>
</html>