function VenueMarker(){

}

VenueMarker.prototype = {
	createMarkers: function(venueData){
		var markers = []
		var length = venueData.length
		for (var i = 0; i< length; i++){
			var latLng = new google.maps.LatLng(venueData[i].geometry.location[0], venueData[i].location[1]);
			var marker = new googe.maps.Marker({position: latLng, map: this.map})
			markers.push(marker)
		}
		return markers
	}
}