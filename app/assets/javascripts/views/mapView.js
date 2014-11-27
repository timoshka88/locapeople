function MapView(){
	this.mapSelector = 'map-canvas'
	this.initialLocation
	// this.place
	this.places
	this.map
	this.userMarker
	this.venueTypes = []
	this.autocomplete
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

	centerMap: function(locationCoordinates){
		var lng = parseFloat(locationCoordinates.lng)
		var lat = parseFloat(locationCoordinates.lat)
		var center = new google.maps.LatLng(lat, lng)
		map.panTo(center)
		map.setZoom(12)
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
  },

  onPlaceChange:function(){
  	console.log("in the onPlaceChange of MapView")
  	console.log (autocomplete)
  	// var place = autocomplete.getPlace()
  	this.search()
  	// place = autocomplete.getPlace()
  	// console.log(place)
  	// if (place.geometry){
  	// 	map.panTo(place.geometry.location)
  	// 	map.setZoom(15)
  	// 	// this.search()
  	// }
  	// else{
  	// 	document.getElementById('autocomplete').placeholder = 'Enter a city'
  	// }
  },

  search:function(){
  	console.log("i'm in the search")
  	this.callPlaceApi()
  	
  	var search = {
  		bounds: map.getBounds(),
  		types:['lodging']
  	};

  	places.nearbySearch(search, function(results, status){
  		console.log(results)
  	})
  },

  userVenueTypeChoice: function(){
  	console.log("i'm in the userVenueTypeChoice")
  	console.log(this.venueTypes)
  	console.log($('input[name="venuetypes"]:checked').get())

  	// if (this.value === 'bar'){
  // 		this.types = ['bar']
  // 	}
  // 	else if(this.value === 'club'){
  // 		this.types = ['nightclub']
  // 	}
  // 	else if (this.value === 'food'){
  // 		this.types = ['food', 'restaurant', 'cafe']
  // 	}
  // 	else if (this.value ===)
  // }
  	// var venueTypes = []
  	$('input[name="venuetypes"]:checked').each(function(){
  		(this.venueTypes).push(this.value)
  		console.log("heello")
  		console.log(this.value)
  		console.log(this.venueTypes)
  		// return venueTypes
  	})
  	// console.log(types)
  }

  // venueType: function(){
  // 	if (this.value === 'bar'){
  // 		this.types = ['bar']
  // 	}
  // 	else if(this.value === 'club'){
  // 		this.types = ['nightclub']
  // 	}
  // 	else if (this.value === 'food'){
  // 		this.types = ['food', 'restaurant', 'cafe']
  // 	}
  // 	else if (this.value ===)
  // }


}