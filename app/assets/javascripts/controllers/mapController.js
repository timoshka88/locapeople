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
	},

  setAjaxListeners: function(){
    console.log("I'm in the setAjaxListeners function of MapController")
    $('.search').on('ajax:success', this.placeMarkers.bind(this))
    $('.search').on('ajax:error', function(){console.log("Error while searching")})
  },

  placeMarkers: function(event, response){
    console.log("i'm in the placeMarkers of mapcontroller")
    console.log(response)
    this.view.clearMarkers(this.markers)
    this.markers = this.venueMarker.createMarkers(response.venues)
    this.view.placeMarkers(this.markers)
    this.view.centerMap(response.center_coords)
  }
}


// Map Model
var mapOptions = (function(){
  var defaultCoordinates = {
    lat: 40.689493,
    lng: -98.578265
  }

  var mapStyling = [
    {
      "featureType":"water",
      "stylers": [
        {"visibility":"on"},
        {"color":"#b5cbe4"}
        ]},
    {
      "featureType":"landscape",
      "stylers": [
        {"color":"#efefef"}
        ]},
    {
      "featureType":"road.highway",
      "elementType":"geometry",
      "stylers": [
        {"color":"#83a5b0"}
        ]},
    {
      "featureType":"road.arterial",
      "elementType":"geometry",
      "stylers": [
      {"color":"#bdcdd3"}
      ]},
    {
      "featureType":"road.local",
      "elementType":"geometry",
      "stylers": [
        {"color":"#ffffff"}
        ]},
    {
      "featureType":"poi.park",
      "elementType":"geometry",
      "stylers": [
      {"color":"#e3eed3"}
      ]},
    {
      "featureType":"administrative",
      "stylers": [
      {"visibility":"on"},
      {"lightness":33}
      ]},
    {
      "featureType":"road"
    },
    {
      "featureType":"poi.park",
      "elementType":"labels",
      "stylers": [
      {"visibility":"on"},
      {"lightness":20}
      ]},
    {
      "featureType":"road",
      "stylers": [
      {"lightness":20}
      ]
    }];

  var googleMapOptions = {
    zoom: 5,
    center: new google.maps.LatLng(defaultCoordinates.lat, defaultCoordinates.lng),
    panControl: false,
    mapTypeControl: false,
    mapTypeControlOptions: {
        style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
        position: google.maps.ControlPosition.BOTTOM_CENTER
    },
    streetViewControl: false,
    zoomControl: true,
    zoomControlOptions: {
        style: google.maps.ZoomControlStyle.SMALL,
        position: google.maps.ControlPosition.RIGHT_BOTTOM
    },
    styles: mapStyling
  }

  return googleMapOptions

})()