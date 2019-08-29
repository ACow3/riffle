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
<link rel="stylesheet" href="/css/main.css" type="text/css" />
<meta charset="UTF-8">
<title>Dashboard</title>
<!-- Bootstrap core CSS -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link href="/css/bootstrap.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link href="/css/main.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function() {
		$('.carousel').carousel({
			interval : 4000
		})
	});
</script>
</head>
<body>

	<div class="mastercontainer">
		<div class="container dashboard">

			<!-- top navigation bar -->

			<nav
				class="navbar nav-dash navbar-expand-lg navbar-custom bg-black mt-3 mb-3">
				<a class="navbar-brand" href="/">WELCOME TO RIFFLE</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarTogglerDemo02"
					aria-controls="navbarTogglerDemo02" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
					<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
						<li class="nav-item active"><a class="nav-link" href=#>USER
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item active"><a class="nav-link"
							href="/songs/new">Add New <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/search/topTen">Top Songs</a></li>
					</ul>
					<form action="/search" class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" name="search" type="search"
							placeholder="Search" id="search"> <input
							class="btn btn-outline-success my-2 my-sm-0" type="submit"
							value="Search Artists">
					</form>
				</div>
			</nav>
		</div>
		<div class="container">





			<!-- artist carousel -->

			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner slides">

					<!-- first slide -->

					<div class="carousel-item active">
						<img class="d-block first_slide" height="500"
							src="img/beyonce2.gif" alt="First slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
					</div>

					<!-- second slide -->

					<div class="carousel-item">
						<img class="d-block w-100 second_slide" height="500"
							src="img/drake.gif" alt="Second slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
					</div>

					<!-- third slide -->

					<div class="carousel-item">
						<img class="d-block w-100 third_slide" height="500"
							src="img/brunomars.gif" alt="Third slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
					</div>

					<!-- fourth slide -->

					<div class="carousel-item">
						<img class="d-block w-100 fourth_slide" height="500"
							src="img/ed.gif" alt="Fourth slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
					</div>

					<!-- fifth slide -->

					<div class="carousel-item">
						<img class="d-block w-100 fifth_slide" height="500"
							src="img/cardib.gif" alt="Fifth slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
					</div>

					<!-- sixth slide -->

					<div class="carousel-item">
						<img class="d-block w-100 sixth_slide" height="500"
							src="img/badbunny.gif" alt="Sixth slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
					</div>

					<!-- seventh slide -->

					<div class="carousel-item">
						<img class="d-block w-100 seventh_slide" height="500"
							src="img/missy.gif" alt="Seventh slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
					</div>

					<!-- eighth slide -->

					<div class="carousel-item">
						<img class="d-block w-100 eighth" height="500"
							src="img/rihanna.gif" alt="Eighth slide">
						<div class="carousel-caption d-none d-md-block"></div>
						<h5></h5>
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
			<div data-spy="scroll" data-offset="0" class="scrollspy">
				<table class="table playlist">
					<thead>
						<tr>
							<th scope="col">Track Name</th>
							<th scope="col">Artist</th>
							<th scope="col">Rating</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="song" items="${Songs}">
							<tr>
								<td scope="row"><a href="/songs/show/${song.id}"><c:out
											value="${song.name}" /></a></td>
								<td scope="row"><c:out value="${song.artist}" /></td>
								<td scope="row"><c:out value="${song.rating}" /></td>
								<td>
									<div class="btn-group">
										<a href="/songs/show/${song.id}" class="btn btn-success">Play
										</a>

										<button class="btn btn-info">Pause</button>


										<form action="/search">
											<input type="submit" value="More" class="btn btn-warning">
											<input type="hidden" value="${song.artist}" name="search" />
										</form>


										<form action="/songs/${song.id}/delete" method="post">
											<input type="hidden" name="_method" value="delete"> <input
												type="submit" class="btn btn-danger" value="Delete" />
										</form>


									</div>

								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<!-- ___________________________________________________ -->

	<!-- Scrollspy test -->

	<nav id="navbar-example2" class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="nav-link" href="#fat">@fat</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#mdo">@mdo</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#one">one</a>
        <a class="dropdown-item" href="#two">two</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item" href="#three">three</a>
      </div>
    </li>
  </ul>
</nav>
<div data-spy="scroll" data-target="#navbar-example2" data-offset="0">
  <h4 id="fat">@fat</h4>
  <p>...</p>
  <h4 id="mdo">@mdo</h4>
  <p>...</p>
  <h4 id="one">one</h4>
  <p>...</p>
  <h4 id="two">two</h4>
  <p>...</p>
  <h4 id="three">three</h4>
  <p>...</p>
</div>
	
</body>
</html>