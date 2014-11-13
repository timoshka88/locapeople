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
		console.log("in the createMarkersScrollingBar")
		var length = venueData.length
		for (var i = 0; i < length; i++) {
				$('.venues-display').append('<li><div class = venue-picture><img src='+ venueData[i].icon + '></div></li>')
		};
	},

	clearMarkerScrollingBar:function(){
		console.log("In the clearMarker Scrolling Bar")
		$('.venues-display').empty()
	}

}

