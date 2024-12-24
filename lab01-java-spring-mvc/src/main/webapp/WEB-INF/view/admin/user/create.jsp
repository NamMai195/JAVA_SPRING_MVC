<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CRUD USER</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-body">
            <h2 class="card-title text-center mb-4">Create a User</h2>
            <form:form method="POST" action="/admin/user" modelAttribute="newuser">
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <form:input type="email"  path="email" name="email" class="form-control" placeholder="Enter your email" />
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <form:input type="password" path="password"  name="password" class="form-control" placeholder="Enter your password" />
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number:</label>
                    <form:input type="tel" id="phone" name="phone" path="phone" class="form-control" placeholder="Enter your phone number" />
                </div>
                <div class="mb-3">
                    <label for="fullName" class="form-label">Full Name:</label>
                    <form:input type="text" path="fullName" id="fullName" name="fullName" class="form-control" placeholder="Enter your full name" />
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Address:</label>
                    <form:input type="text" path="address" id="address" name="address" class="form-control" placeholder="Enter your address" />
                </div>
                <button type="submit" class="btn btn-primary w-100">Create</button>
            </form:form>
        </div>
    </div>
</div>
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>