<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Song</title>
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/new.css" rel="stylesheet">
</head>
<body>
	<div class="mastercontainer new-container">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light mt-3 mb-3">
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

					<div class="card h-100">

						<!-- <a href="#"><img class="card-img-top"
							src="/img/musicvisual.gif" alt="music_visual"></a> -->

						<div class="card-body">
							<h1 class="card-title">Add To Your Playlist</h1>
							<form:form action="/songs/process" method="post"
								modelAttribute="song">
								<p>
									<form:label path="name">Title</form:label>
									<form:errors path="name" />
									<form:input path="name" class="form-control col" />
								</p>
								<p>
									<form:label path="artist">Artist</form:label>
									<form:errors path="artist" />
									<form:input path="artist" class="form-control col" />
								</p>
								<p>
									<form:label path="rating">Rating</form:label>
									<form:errors path="rating" />
									<form:select class="form-control col" path="rating">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
										<option>6</option>
										<option>7</option>
										<option>8</option>
										<option>9</option>
										<option>10</option>
									</form:select>
								</p>

								<input type="submit" class="btn btn-success" value="Submit" />
							</form:form>

							<a href="/dashboard" class="btn btn-info mt-2">Nevermind</a>

						</div>

					</div>
				</div>


			<!-- /.container -->
		</div>
</body>
</html>