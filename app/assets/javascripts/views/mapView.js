function MapView(){
	this.mapSelector = 'map-canvas'
	this.initialLocation
	// this.place
	this.places
	this.map
	this.userMarker
	this.distanceValue
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
  	console.log(this.venueTypes)
  	console.log(this.distanceValue)

  	this.checkTypeSelection()
  	this.checkDistanceSelection()
  	
  	// var place = autocomplete.getPlace()
  	// this.search()
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
  	console.log(this.venueTypes)
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
  	var venueTypes = []
  	$.each($('input[name="venuetypes"]:checked'), function(key, value){
  		venueTypes.push($(value).attr("value"))
  	})
  	this.venueTypes = venueTypes
  	console.log(this.venueTypes)
  },

  changeDistanceValue:function(event){
    $("#kmValue").val(event.target.value + ' km')
    var value = $("#kmValue").val()
    value = value.split(' ')[0]
    this.distanceValue = parseInt(value) * 1000
    console.log(this.distanceValue)
  },

  checkTypeSelection:function(){

  	console.log("i'm in the checkTypeSelection")

  	if($('input[name="venuetypes"]').is(':checked')){
  		console.log("i'm in the if of venueTypes")
  		return this.venueTypes
  	}
  	else{
  		console.log("i'm in the else of venueTypes")
  		this.venueTypes = ['bar', 'nightclub', 'cafe', 'restaurant']
  	}
		console.log(this.venueTypes)
  },

  checkDistanceSelection:function(){
  	console.log("i'm in the checkDistanceSelection")
  	if(typeof this.distanceValue !== 'undefined'){
  		console.log("i'm in the if of distanceValue")
  		return this.distanceValue
  	}
  	else{
  		console.log("i'm in the else of distanceValue")
  		this.distanceValue = 3000
  	}
		console.log(this.distanceValue)
  }


}