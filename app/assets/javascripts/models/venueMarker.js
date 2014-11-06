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

		// for (var i = 0; i < length; i++) {
		// 	console.log(venueData[i].photos)
		// 	if (venueData[i].photos.length === 0) {
		// 		console.log("Hello")
		// 	}
		// 	else {
		// 		console.log(venueData[i].photos[0].getUrl({'maxWidth': 35, 'maxHeight': 35}))
		// 	}
		// };
		for (var i = 0; i < length; i++) {
			// if (venueData[i].photos.length > 0) {
				// var photoUrl = venueData[i].photos[0].getUrl({'maxWidth': 35, 'maxHeight': 35}) 
				// $('.venues-display').append('<li><div class = venue-picture><img src='+ photoUrl + '></div></li>')
			// }
			// else{
				$('.venues-display').append('<li><div class = venue-picture><img src='+ venueData[i].icon + '></div></li>')
			// }
		};


	// }
	},

	clearMarkerScrollingBar:function(){
		console.log("In the clearMarker Scrolling Bar")
		$('.venues-display').empty()
	}

}

