function MapView(){
	this.mapSelector = 'map-canvas'
	this.initialLocation
	this.place
	this.places
	this.map
	this.distanceValue
	this.venueTypes = []
	this.autocomplete
	this.query
	this.siberia = new google.maps.LatLng(60, 105)
	this.newYork = new google.maps.LatLng(40.69847032728747, -73.9514422416687)
	this.browserSupportFlag =  new Boolean();
	this.userSearchInput = (document.getElementById('autocomplete'))
  this.autocompleteOptions = {types: ['(cities)']}
}

MapView.prototype = {
	drawMap: function(){
		map = new google.maps.Map(document.getElementById(this.mapSelector), mapOptions);
	},

	callPlaceApi:function(){
		places = new google.maps.places.PlacesService(map)
	},

	// centerMap: function(){
	// 	// var lng = locationCoordinates.lng
	// 	// var lat = locationCoordinates.lat
	// 	// console.log(lng)
	// 	// console.log(lat)
	// 	// var center = new google.maps.LatLng(lat,lng)
	// 	// map.panTo(center)
	// 	map.setZoom(9)
	// },

	centerMaponSearch:function(coords){
		map.panTo(coords.location)
		map.setZoom(10)
	},

	placeMarkers: function(markers){
		console.log("i'm in the placeMarkers function of MapView")
		for (var i = 0; i < markers.length; i++){
			markers[i].setMap(map)
		}
	},

	clearMarkers: function(markers){
		console.log("i'm in the clearMarkers function of MapView")
		for (var i = 0; i < markers.length; i++){
			markers[i].setMap(null);
		}
	},

	userLocationCoords: function(position){
		initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
		userMarker = new google.maps.Marker({ position : initialLocation, map : map })
    map.setCenter(initialLocation)
    map.setZoom(12)
	},

	autoGeolocation: function(){
		if (navigator.geolocation){
		 	this.browserSupportFlag = true;
      navigator.geolocation.getCurrentPosition(this.userLocationCoords)
    } 
    else {
    // Browser doesn't support Geolocation
    	this.browserSupportFlag = false;
    	this.handleNoGeolocation(this.browserSupportFlag);
    }
  },

  handleNoGeolocation:function(errorFlag) {
  	if (errorFlag == true) {
    	var content = 'Error: The Geolocation service failed.';
    	initialLocation = this.newYork;
  	} 
  	else {
    	var content = 'Error: Your browser doesn\'t support geolocation.';
    	initialLocation = this.siberia;
  	}

  },

  googleAutocomplete: function(){
  	console.log("I'm in the view googleAutocomplete")
  	autocomplete = new google.maps.places.Autocomplete(this.userSearchInput, this.autocompleteOptions)
  }


}