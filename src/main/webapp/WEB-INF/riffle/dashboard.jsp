<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css" type="text/css"/>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<body>
	<div class="container">

		<!-- top navigation bar -->

		<nav class="navbar navbar-expand-lg navbar-light bg-white mt-3 mb-3">
			<a class="navbar-brand" href="/">Riffle</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link"
						href="/songs/new">Add New <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/search/topTen">Top
							Songs</a></li>
				</ul>
				<form action="/search" class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" name="search" type="search"
						placeholder="Search"> <input
						class="btn btn-outline-success my-2 my-sm-0" type="submit"
						value="Search Artists">
				</form>
			</div>
		</nav>

		<!-- artist carousel -->

		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner slides">
				<div class="carousel-item active">
					<img class="d-block first_slide" height="500"
						src="/assets/img/samoa.jpg" alt="First slide">
					<div class="carousel-caption d-none d-md-block"></div>
					<h5>Artist name here</h5>
				</div>
				<div class="carousel-item">
					<img class="d-block first_slide" height="500"
						src="/assets/img/chicago.jpg" alt="Second slide">
					<div class="carousel-caption d-none d-md-block"></div>
					<h5>New member, Drue surprised friends with a last-minute trip
						to Chicago!</h5>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100 third_slide" height="500"
						src="/assets/img/new_jersey_pic.jpeg" alt="Third slide">
					<div class="carousel-caption d-none d-md-block"></div>
					<h5>David C. took a much needed trip home to New Jersey.</h5>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

		<!-- user's song playlist -->

		<table class="table">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Rating</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="song" items="${Songs}">
					<tr>
						<td scope="row"><a href="/songs/show/${song.id}"><c:out
									value="${song.name}" /></a></td>
						<td scope="row"><c:out value="${song.rating}" /></td>
						<td>
							<form action="/songs/${song.id}/delete" method="post">
								<input type="hidden" name="_method" value="delete"> <input
									type="submit" class="text-danger" value="Delete" />
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>