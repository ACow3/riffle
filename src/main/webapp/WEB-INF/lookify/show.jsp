<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Song</title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-white mt-3 mb-3">
			<a class="navbar-brand" href="#"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link"
						href="/songs/new"><span class="sr-only">(current)</span> </a></li>
					<li class="nav-item"><a class="nav-link" href="#"></a></li>
				</ul>
				<a class="form-inline my-2 my-lg-0" href="/dashboard">Dashboard</a>

			</div>
		</nav>
		<p>
			Title:
			<c:out value="${Lookify.name}" />
		</p>
		<p>
			Description:
			<c:out value="${Lookify.artist}" />
		</p>
		<p>
			Rating (1-10):
			<c:out value="${Lookify.rating}" />
		</p>

		<form action="/songs/${Lookify.id}/delete" method="post">
			<input type="hidden" name="_method" value="delete"> <input
				type="submit" class="text-danger" value="Delete" />
		</form>

	</div>
</body>
</html>