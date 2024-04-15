<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <style type="text/css">
    	<%@include file="/css/admin_login.css" %>
    </style>
<title>Admin login</title>
</head>
<body>
    <form action="/ASM_SOF3011/loginAdmin" method="post">
        <h3>Login Here</h3>

        <label for="username">Username</label>
        <input name="username" type="text" placeholder="Username" id="username">

        <label for="password">Password</label>
        <input name="password" type="password" placeholder="Password" id="password">

        <button type="submit" class="btn_login">Log In</button>
        
        <c:if test="${not empty message}">
        	  <div class="alert alert-danger">
    				${message}
  			  </div>
        </c:if>
    </form>
</body>
</html>