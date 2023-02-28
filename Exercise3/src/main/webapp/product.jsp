<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <h3 class="text-center text-secondary mt-5 mb-3">Add Product</h3>
            <form class="border rounded w-100 mb-5 mx-auto px-3 pt-3 bg-light" action="./ProductServlet" method="post">
                <div class="form-group">
                    <label for="id">ID</label>
                    <input id="id" name="id" type="text" class="form-control" placeholder="ID Product">
                </div>
                <div class="form-group">
                    <label for="name">Name </label>
                    <input id="name" name="name" type="text" class="form-control" placeholder="Name Product">
                </div>
                <div class="form-group">
                    <label for="price">Price </label>
                    <input id="price" name="price" type="text" class="form-control" placeholder="Price Product">
                </div>
                <div class="form-group">
                    <button class="btn btn-success px-5">Add</button>
                </div>
              
            </form>

        </div>
    </div> 

    </div>
</body>
</html>