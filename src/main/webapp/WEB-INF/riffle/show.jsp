<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Song</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="/css/main.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="/js/lastfm.js"></script>

</head>
<body>
	<div class="mastercontainer show-container">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-black bg-black mt-3 mb-3">
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


		</div>

		<!-- 	______________________________________________________________________________________ -->

		<!-- Page Content -->
		<div class="container">

			<!-- Page Heading -->
			<h1 class="my-4">
				<c:out value="${Lookify.name}" />
				<small><c:out value="${Lookify.artist}" /></small>
			</h1>

			<div class="row">
				<div class="col-lg-6 mb-4">
					<div class="card h-100">

						<a href="#"><img class="card-img-top"
							src="http://placehold.it/700x400" alt=""></a>

						<div class="card-body">
							<h4 class="card-title">
								<a href="#">Year: Year of Song</a>
							</h4>

							<p>
								Title:
								<c:out value="${Lookify.name}" />
							</p>
							<p>
								By:
								<c:out value="${Lookify.artist}" />
							</p>
							<p>
								Rating (1-10):
								<c:out value="${Lookify.rating}" />
							</p>

							<form action="/songs/${Lookify.id}/delete" method="post">
								<input type="hidden" name="_method" value="delete"> <input
									type="submit" class="btn btn-danger mt-3"
									value="Delete from playlist" />
							</form>

						</div>

					</div>
				</div>


				<div class="col-lg-6 mb-4">
					<div class="card h-100">

						<a href="#"><img class="card-img-top"
							src="/img/profile.png" alt="artist_image"></a>

						<div class="card-body">
							<h4 class="card-title">
								<a href="#">${Lookify.artist}</a>
							</h4>


							<form action="/search">
								<input type="submit" value="Learn More"
									class="btn btn-warning"> <input type="hidden"
									value="${Lookify.artist}" name="search" />
							</form>

						</div>

					</div>
				</div>

			</div>
			<!-- /.row -->

		</div>
		<!-- /.container -->

	</div>
</body>
</html>