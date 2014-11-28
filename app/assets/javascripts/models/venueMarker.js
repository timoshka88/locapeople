function VenueMarker(){
}

VenueMarker.prototype = {
	createMarkers: function(venueData){
		console.log("I'm in the createMarkers in the VenueMarker")
		console.log(venueData)
		var markers = []
		var length = venueData.length
		for (var i = 0; i < length; i++){
			// var latLng = new google.maps.LatLng(venueData[i].geometry.location);
			// console.log(latLng)
			var marker = new google.maps.Marker({position: venueData[i].geometry.location, map: map});
			markers.push(marker)
		}
		return markers
	},

	createMarkersScrollingBar:function(venueData){
		console.log("in the createMarkersScrollingBar")
		var length = venueData.length
		console.log(venueData)
		for (var i = 0; i < length; i++) {
			console.log('venueData photo retrieval')
			console.log(venueData[0].photos)
			this.retrievePhoto(venueData[i])
			var venueSmallBox = HandlebarsTemplates['venues/venue_display_scroll_bar'](venueData[i])
			$('.venues-display').append(venueSmallBox)
				// $('.venues-display').append('<li><div class = venue-picture><img src='+ venueData[i].icon + '></div></li>')
		};
	},

	clearMarkerScrollingBar:function(){
		console.log("In the clearMarker Scrolling Bar")
		$('.venues-display').empty()
	},

	retrievePhoto: function(place){
		var photos = place.photos
		var photo
		if(typeof photos !== 'undefined'){
			photo = photos[0].getUrl({'maxWidth': 35, 'maxHeight': 35})
			return 
		}
	}

}

