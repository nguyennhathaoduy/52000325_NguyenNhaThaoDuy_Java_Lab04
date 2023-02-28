<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Upload file</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col col-md-6 card mt-5 p-3">
				<form class="needs-validation" novalidate method="post" action="upload" enctype="multipart/form-data">

					<div class="form-group">
						<label for="name">File Name</label>
						<input 
							placeholder="This name will be used to save the file after uploading to server" 
							id="name" type="text" class="form-control" name="filename" required
						>
						<div class="invalid-feedback">
				          Please enter filename.
				        </div>	
					</div>
					<div class="form-group">
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="document" name="file" required>
							<label class="custom-file-label" for="document">Choose file</label>
							<div class="invalid-feedback">
					          Please upload your file.
					        </div>	
						</div>
					</div>
					<div class="form-group">
						<div class="form-check">
							<input type="checkbox" class="form-check-input" id="override" name="override">
							<label class="form-check-label" for="override">Override if exists</label>
						</div>
					</div>
					<div class="form-group">
						<button class="btn btn-primary">Upload</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
		(function() {
		  	'use strict';
		  	window.addEventListener('load', function() {
		    // Fetch all the forms we want to apply custom Bootstrap validation styles to
		    var forms = document.getElementsByClassName('needs-validation');
		    // Loop over them and prevent submission
		    var validation = Array.prototype.filter.call(forms, function(form) {
		      form.addEventListener('submit', function(event) {
		        if (form.checkValidity() === false) {
		          event.preventDefault();
		          event.stopPropagation();
		        }
		        form.classList.add('was-validated');
		      }, false);
		    });
		  }, false);
		  
			// Add the following code if you want the name of the file appear on select
			$(".custom-file-input").on("change", function () {
				var fileName = $(this).val().split("\\").pop();
				$(this).siblings(".custom-file-label").addClass("selected").html(fileName);
			});
		})();
	</script>
</body>
</html>