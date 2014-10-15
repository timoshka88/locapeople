function MapView(){
	this.mapSelector = 'map-canvas'
}

MapView.prototype = {
	drawMap: function(){
		this.map = new google.maps.Map(document.getElementById(this.mapSelector), mapOptions);
	},

	centerMap: function(locationCoordinates){
		var lng = parseFloat(locationCoordinates.lng)
		var lat = parseFloat(locationCoordinates.lat)
		var center = new google.maps.LatLng(lat, lng)
		this.map.panTo(center)
		this.map.setZoom(12)
	},

	placeMarkers: function(markers){
		console.log("i'm in the placeMarkers function of MapView")
		for (var i = 0; i < markers.length; i++){
			markers[i].setMap(this.map)
		}
	},

	clearMarkers: function(markers){
		console.log("i'm in the clearMarkers function of MapView")
		for (var i = 0; i < markers.length; i++){
			markers[i].setMap(null);
		}
	}
}