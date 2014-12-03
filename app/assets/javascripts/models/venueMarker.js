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

	createMarkersScrollingBar:function(venueData,i,marker){
		console.log("in the createMarkersScrollingBar")
		console.log(venueData)
		var venueSmallBox = HandlebarsTemplates['venues/venue_display_scroll_bar'](venueData)
		// var res = document.getElementById('venues-display')
		
		
		$('#venues-display').append(venueSmallBox)
		var li = $('ul#venues-display li').get(i)
		console.log(li)
		li.onclick = function() {console.log("heeey") 
			google.maps.event.trigger(marker, 'click')}

	},

	clearMarkerScrollingBar:function(){
		console.log("In the clearMarker Scrolling Bar")
		$('#venues-display').empty()
	},

	

}

