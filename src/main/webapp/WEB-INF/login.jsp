<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- BootStrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- BootStrap JS -->
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
<link type="text/css" rel="stylesheet" href="/css/main.css" >
<title>Insert title here</title>
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/6.4.2/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#config-web-app -->

<script
	src="https://cdn.firebase.com/libs/firebaseui/4.1.0/firebaseui.js"></script>
<script>
	// Your web app's Firebase configuration
	var firebaseConfig = {
		apiKey : "AIzaSyC5j-J0qhKmwtklPpyflJDF7UDg9i2uaeQ",
		authDomain : "riffle-d91a2.firebaseapp.com",
		databaseURL : "https://riffle-d91a2.firebaseio.com",
		projectId : "riffle-d91a2",
		storageBucket : "",
		messagingSenderId : "1084534767417",
		appId : "1:1084534767417:web:1b6a9b9712837a4a"
	};
	// Initialize Firebase
	firebase.initializeApp(firebaseConfig);
</script>
<link type="text/css" rel="stylesheet"
	href="https://cdn.firebase.com/libs/firebaseui/4.1.0/firebaseui.css" />
<script type="text/javascript">
	// FirebaseUI config.
	var uiConfig = {
		signInSuccessUrl : 'success.html',
		signInOptions : [
		// Leave the lines as is for the providers you want to offer your users.
		firebase.auth.GoogleAuthProvider.PROVIDER_ID,
				firebase.auth.FacebookAuthProvider.PROVIDER_ID,
				firebase.auth.TwitterAuthProvider.PROVIDER_ID,
				firebase.auth.GithubAuthProvider.PROVIDER_ID,
				firebase.auth.EmailAuthProvider.PROVIDER_ID,
				firebase.auth.PhoneAuthProvider.PROVIDER_ID,
				firebaseui.auth.AnonymousAuthProvider.PROVIDER_ID ],
		// tosUrl and privacyPolicyUrl accept either url string or a callback
		// function.
		// Terms of service url/callback.
		tosUrl : '<your-tos-url>',
		// Privacy policy url/callback.
		privacyPolicyUrl : function() {
			window.location.assign('<your-privacy-policy-url>');
		}
	};

	// Initialize the FirebaseUI Widget using Firebase.
	var ui = new firebaseui.auth.AuthUI(firebase.auth());
	// The start method will wait until the DOM is loaded.
	ui.start('#firebaseui-auth-container', uiConfig);
</script>
</head>
<body>
	<div class="master-container">
		<div class="row-wrap"></div>
		<div class="container">
			<!-- The surrounding HTML is left untouched by FirebaseUI.
         Your app may use that space for branding, controls and other customizations.-->
			<h1>Please Sign In</h1>
			<div id="firebaseui-auth-container"></div>
		</div>
	</div>


	<!----------------------------------- OAuth Services ------------------------------------------------------>

	<!-- Insert these scripts at the bottom of the HTML, but before you use any Firebase services -->

	<!-- Firebase App (the core Firebase SDK) is always required and must be listed first -->
	<script src="/__/firebase/6.4.1/firebase-app.js"></script>

	<!-- Add Firebase products that you want to use -->
	<script src="/__/firebase/6.4.1/firebase-auth.js"></script>
	<script src="/__/firebase/6.4.1/firebase-firestore.js"></script>
	<script src="/__/firebase/init.js"></script>
</body>
</html>