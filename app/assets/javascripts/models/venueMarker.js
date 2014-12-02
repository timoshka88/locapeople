function VenueMarker(){
}

VenueMarker.prototype = {
	createMarkers: function(venueData){
		console.log("I'm in the createMarkers in the VenueMarker")
		console.log(venueData)
		var markers = []
		var length = venueData.length
		for (var i = 0; i < length; i++){
			var marker = new google.maps.Marker({position: venueData[i].geometry.location, map: map});
			markers.push(marker)
		}
		return markers
	},

	createMarkersScrollingBar:function(venueData){
		console.log("in the createMarkersScrollingBar")
		console.log(venueData)
		// var length = venueData.length
		// console.log(venueData)
		// for (var i = 0; i < length; i++) {
		var venueSmallBox = HandlebarsTemplates['venues/venue_display_scroll_bar'](venueData)
		$('.venues-display').append(venueSmallBox)
		// };
	},

	clearMarkerScrollingBar:function(){
		console.log("In the clearMarker Scrolling Bar")
		$('.venues-display').empty()
	},

	

}

