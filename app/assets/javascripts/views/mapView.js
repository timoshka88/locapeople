function MapView(){
	this.mapSelector = 'map-canvas'
}

MapView.prototype = {
	drawMap: function(){
		this.map = new google.maps.Map(document.getElementById(this.mapSelector), mapOptions);
	},

	allocateMap: function(locationCoordinates){
		var lng = parseFloat(locationCoordinates.lng)
		var lat = parseFloat(locationCoordinates.lat)
		var centerMap = new google.maps.LatLng(lat, lng)
		this.map.pantTo(centerMap)
		this.map.setZoom(12)
	},

	placeMarkers: function(markers){
		for (var i = 0; i < markers.length; i++){
			markers[i].setMap(this.map)
		}
	},

	clearMarkers: function(markers){
		for (var i = 0; i < markers.length; i++){
			markers[i].setMap(null);
		}
	}
}