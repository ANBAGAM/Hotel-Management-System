<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form>
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
							<button id="submit" onclick="myFunction()" name="submit" class="btn btn-primary" value="${hid}">pay
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

<h1>${price}</h1>
<h1>${hname}</h1>

</body>

</html>