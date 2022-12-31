<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/app.js"></script>

<title>CounterMeme Counter++</title>
</head>
<body>
	<div class="container bg-light d-flex flex-column justify-content-center align-items-center mt-5">
		<h1>Counter++ Meme</h1>
		<p>You have visited <a href="/counter">Counter++ Meme</a> <c:out value="${pageVisitedCount}"/> time(s). </p>
		<p class="btn btn-primary p-3  fs-2"><a class="text-decoration-none text-light" href="/">Home</a></p>

	</div>
</body>
</html>