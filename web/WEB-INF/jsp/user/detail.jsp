<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Tích hợp Hibernate</title>
        <base href="${pageContext.servletContext.contextPath}/">

        <script src="js/jquery.min.js"></script>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <script src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <style> 
div.fixed {
    position: fixed;
    bottom: 50%;
    right: 50%;
    width: 500px;
     border-bottom: 6px solid red;
    background-color: lightgrey;
}
</style>
    <body class="container">
        <div class="w3-top">
            <div class="w3-bar" id="myNavbar">
                <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
                    <i class="fa fa-bars"></i>
                </a>
                <a href="index.htm" class="w3-bar-item w3-button">Home</a>

                <a href="user/list.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> User List </a>

                <a href="user/login.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> Login</a>
                <a href="user/register.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> Register</a>
                <a href="user/change.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> Change password</a>
                <a href="major.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> Major Manager</a> 
                <a href="student.htm" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> Student Manager</a>
                <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
                    <i class="fa fa-search"></i>
                </a>
            </div>
            <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
                <a href="user/list.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">User List</a>

                <a href="user/login.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Login</a>
                <a href="user/register.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Register</a>
                <a href="user/change.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Change password</a>
                <a href="major.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">major Manager</a>
                <a href="student.htm" class="w3-bar-item w3-button" onclick="toggleFunction()">Student Manager</a>
                <a href="#" class="w3-bar-item w3-button">SEARCH</a>
            </div>
        </div>
        <div class="fixed">
        <h2>THÔNG TIN CHI TIẾT</h2>
        <ul>
            <li>Username: ${user.id}</li>
            <li>Password: ${user.password}</li>
            <li>Fullname: ${user.fullname}</li>
            <li>Email: ${user.email}</li>
            <li>Photo: ${user.photo}</li>
        </ul>
        </div>
    </body>
</html>
