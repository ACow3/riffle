$(document).ready(function(){
	var artist = document.getElementById("artist").value;
	console.log(artist)
	var url = "http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist="+ artist +"&api_key=XXX=json"
	$.get(url, function(res){
		var results = res;
		console.log(res);
	})
})