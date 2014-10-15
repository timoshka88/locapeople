function VenueMarker(){
}

VenueMarker.prototype = {
	createMarkers: function(venueData){
		console.log("I'm in the createMarkers in the VenueMarker")
		var markers = []
		var length = venueData.length
		for (var i = 0; i < length; i++){
			var latLng = new google.maps.LatLng(venueData[i].lat, venueData[i].lng);
			var marker = new google.maps.Marker({position: latLng, map: this.map});
			markers.push(marker)
		}
		return markers
	}
}