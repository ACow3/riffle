<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Artist's Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="/css/main.css" rel="stylesheet">
</head>
<body>
	<div class="mastercontainer">
		<div class="container artist_page">

			<!-- navigation bar -->

			<nav class="navbar navbar-expand-lg navbar-light bg-black mt-3 mb-3">
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


			<h3>Songs by ${artist} on your playlist:</h3>
			<div class="topTen">
				<table class="table table_artist_page">
					<thead>
						<tr>
							<th scope="col">Name</th>
							<th scope="col">Rating</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="song" items="${artistSongs}">
							<tr>
								<td scope="row"><a href="/songs/show/${song.id}"><c:out
											value="${song.name}" /></a></td>
								<td scope="row"><c:out value="${song.rating}" /></td>
								<td scope="row">
									<form action="/songs/${Lookify.id}/delete" method="post">
										<input type="hidden" name="_method" value="delete"> <input
											type="submit" class="btn btn-danger" value="Delete" />
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>


				<!-- _________________________________________________________________________________	 -->

				<!-- Header -->
				<header class="bg-success text-center py-5 mb-4">
					<div class="container">
						<h1 class="display-1 font-weight-light text-white">Albums by ${artist}</h1>
					</div>
				</header>


				<!-- Page Content -->
				<div class="container">
					<div class="row">
						<!-- Team Member 1 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-0 shadow">
								<img src="https://source.unsplash.com/TMgQMXoglsM/500x350"
									class="card-img-top" alt="...">
								<div class="card-body text-center">
									<h5 class="card-title mb-0">Album 1</h5>
									<div class="card-text text-black-50">Album Year</div>
								</div>
							</div>
						</div>
						<!-- Team Member 2 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-0 shadow">
								<img src="https://source.unsplash.com/9UVmlIb0wJU/500x350"
									class="card-img-top" alt="...">
								<div class="card-body text-center">
									<h5 class="card-title mb-0">Album 2</h5>
									<div class="card-text text-black-50">Album Year</div>
								</div>
							</div>
						</div>
						<!-- Team Member 3 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-0 shadow">
								<img src="https://source.unsplash.com/sNut2MqSmds/500x350"
									class="card-img-top" alt="...">
								<div class="card-body text-center">
									<h5 class="card-title mb-0">Album 3</h5>
									<div class="card-text text-black-50">Album Year</div>
								</div>
							</div>
						</div>
						<!-- Team Member 4 -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-0 shadow">
								<img src="https://source.unsplash.com/ZI6p3i9SbVU/500x350"
									class="card-img-top" alt="...">
								<div class="card-body text-center">
									<h5 class="card-title mb-0">Album 4</h5>
									<div class="card-text text-black-50">Album Year</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.row -->

				</div>
				<!-- /.container -->


			</div>
		</div>
	</div>
</body>
</html>