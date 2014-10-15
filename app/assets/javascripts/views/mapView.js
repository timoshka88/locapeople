function MapView(){
	this.mapSelector = 'map-canvas'
}

MapView.prototype = {
	drawMap: function(){
		this.map = new google.maps.Map(document.getElementById(this.mapSelector), mapOptions);
	},

	centerMap: function(locationCoordinates){
		console.log("i'm in the centerMap function of MapView")
		console.log(locationCoordinates)
		var lng = parseFloat(locationCoordinates.lng)
		var lat = parseFloat(locationCoordinates.lat)
		var center = new google.maps.LatLng(lat, lng)
		this.map.panTo(center)
		this.map.setZoom(12)
	},

	placeMarkers: function(markers){
		console.log("printing the markers from the MapView")
		console.log(markers)
		console.log("i'm in the placeMarkers function of MapView")
		for (var i = 0; i < markers.length; i++){
			console.log(markers)
			markers[i].centerMap(this.map)
		}
	},

	clearMarkers: function(markers){
		console.log("i'm in the clearMarkers function of MapView")
		for (var i = 0; i < markers.length; i++){
			markers[i].centerMap(null);
		}
	}
}