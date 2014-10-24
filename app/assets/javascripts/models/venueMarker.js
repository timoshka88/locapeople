function VenueMarker(){
}

VenueMarker.prototype = {
	createMarkers: function(venueData){
		console.log("I'm in the createMarkers in the VenueMarker")
		var markers = []
		var length = venueData.length
		for (var i = 0; i < length; i++){
			var latLng = new google.maps.LatLng(venueData[i].lat, venueData[i].lng);
			var marker = new google.maps.Marker({position: latLng, map: map});
			markers.push(marker)
		}
		return markers
	},

	createMarkersScrollingBar:function(venueData){
		console.log(venueData)
		var length = venueData.length

		for (var i = 0; i < length; i++) {
			$('.venue_display').append('<li><div class = inner><img src='+ venueData[i].icon + '></div></li>')
		};


	}
}