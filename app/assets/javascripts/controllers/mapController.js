$(document).ready(function(){
	new MapController(new MapView).init();
});

//Map Controller
function MapController(mapView){
	this.view = mapView
  this.venueMarker = new VenueMarker()
  this.markers = []

}

MapController.prototype = {
	init: function(){
    console.log("I'm in the init function, drawing the map")
		this.view.drawMap()
    this.setAjaxListeners()
    this.autoGeolocation()

	},

  setAjaxListeners: function(){
    console.log("I'm in the setAjaxListeners function of MapController")
    $('.search').on('ajax:success', this.placeMarkers.bind(this))
    $('.search').on('ajax:error', function(){console.log("Error while searching")})
    $('#my-location').on('click', this.userLocation)
  },

  placeMarkers: function(event, response){
    console.log("i'm in the placeMarkers of mapcontroller")
    this.view.clearMarkers(this.markers)
    this.markers = this.venueMarker.createMarkers(response.venues)
    this.view.placeMarkers(this.markers)
    this.view.centerMap(response.center_coords)
  },

  autoGeolocation: function(){
    this.view.autoGeolocation()
  },

  userLocation: function() {
    console.log("In the user location of Map controller")
  }
}
