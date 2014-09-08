$(document).ready(function(){
	new MapController(new MapView).init();
});

// Map Controller
function MapController(mapView){
	this.view 					= mapView

}

MapController.prototype = {
	init: function(){
		this.view.drawMap()
		console.log("I've executed the MapController init")
		this.view.autocomplete()
	}
}


// Map View
function MapView(){
	this.mapSelector 		= 'map-canvas'
	this.inputSelector 	= document.getElementById('pac-input')
	this.typesSelector 	= document.getElementById('type-selector')
}

MapView.prototype = {
	drawMap: function(){
		this.map = new google.maps.Map(document.getElementById(this.mapSelector), mapOptions);
		console.log("I'm in map draw")
	},



	autocomplete: function(){
		
  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(this.inputSelector);
  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(this.typesSelector);

  var autocomplete = new google.maps.places.Autocomplete(this.inputSelector);
  autocomplete.bindTo('bounds', this.map);

  var infowindow = new google.maps.InfoWindow();
  var marker = new google.maps.Marker({
    map: this.map,
    anchorPoint: new google.maps.Point(0, -29)
  });

  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    infowindow.close();
    marker.setVisible(false);
    var place = autocomplete.getPlace();
    if (!place.geometry) {
      return;
    }

    // If the place has a geometry, then present it on a map.
    // if (place.geometry.viewport) {
    // 	console.log(this)
    //   map.fitBounds(place.geometry.viewport);
    // } else {
    // 	console.log(this)
    //   map.setCenter(place.geometry.location);
    //   map.setZoom(17);  // Why 17? Because it looks good.
    // }
    marker.setIcon(/** @type {google.maps.Icon} */({
      url: place.icon,
      size: new google.maps.Size(71, 71),
      origin: new google.maps.Point(0, 0),
      anchor: new google.maps.Point(17, 34),
      scaledSize: new google.maps.Size(35, 35)
    }));
    marker.setPosition(place.geometry.location);
    marker.setVisible(true);

    var address = '';
    if (place.address_components) {
      address = [
        (place.address_components[0] && place.address_components[0].short_name || ''),
        (place.address_components[1] && place.address_components[1].short_name || ''),
        (place.address_components[2] && place.address_components[2].short_name || '')
      ].join(' ');
    }

    infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
    infowindow.open(this.map, marker);
  });

  // Sets a listener on a radio button to change the filter type on Places
  // Autocomplete.
  function setupClickListener(id, types) {
    var radioButton = document.getElementById(id);
    google.maps.event.addDomListener(radioButton, 'click', function() {
      autocomplete.setTypes(types);
    });
  }

  setupClickListener('changetype-all', []);
  setupClickListener('changetype-establishment', ['establishment']);
  setupClickListener('changetype-geocode', ['geocode']);
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