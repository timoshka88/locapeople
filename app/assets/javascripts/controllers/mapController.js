$(document).ready(function(){
	new MapController(new MapView).init();
});

//Map Controller
function MapController(mapView){
	this.view = mapView
  this.venueMarker = new VenueMarker()
  this.markers = []
  this.autocomplete
  this.query
  this.place
  this.places
  this.distanceValue
  this.venueTypes = []

}

MapController.prototype = {
	init: function(){
    console.log("I'm in the init function, drawing the map")
		this.view.drawMap()
    this.places = this.view.callPlaceApi()
    // this.view.callPlaceApi()
    this.setListeners()
    // this.setAjaxListeners()
    this.autoGeolocation()
    this.autocomplete = this.view.googleAutocomplete()

	},

  setListeners:function(){
    $("input[type=checkbox]").on('click',this.userVenueTypeChoice.bind(this))
    $("form").submit(this.onPlaceChange.bind(this))
    $('#distance').change(this.changeDistanceValue.bind(this))
    $('#my-location').on('click', this.autoGeolocation.bind(this))

  },

  setAjaxListeners: function(){
    console.log("I'm in the setAjaxListeners function of MapController")
    $('#search').on('ajax:success', this.placeMarkers.bind(this))
    $('#search').on('ajax:success', this.venueDisplayBar.bind(this))
    $('#search').on('ajax:success', this.clearForm.bind(this))
    $('#search').on('ajax:error', function(){console.log("Error while searching")})
  },

  changeDistanceValue:function(event){
    console.log ("in the changeDistanceValue")
    $("#kmValue").val(event.target.value + 'km')
  },

  onPlaceChange:function(){
    console.log("in the onPlaceChange of MapController")
    
    console.log('this is autocomplete')
    console.log(autocomplete)

    this.getSelectedDistance()
  
    this.checkTypeSelection()
    this.checkDistanceSelection()

    this.query = "establishments " + autocomplete.gm_accessors_.place.td.formattedPrediction
    console.log(this.query)
    
    console.log(autocomplete.gm_accessors_.place.td.place.geometry.location)

    this.place = autocomplete.gm_accessors_.place.td.place
    if (this.place.geometry){
      this.view.centerMaponSearch(this.place.geometry)
      this.search()
    }

  },

  search:function(){
    console.log("i'm in the search")
    this.view.clearForm()
    // this.places = this.view.callPlaceApi()

    var search = {
      query: this.query,
      location: this.place.geometry.location,
      radius: this.distanceValue,
      types: this.venueTypes,
    };

    console.log(search.query)
    console.log(search.types)
    console.log(search.location)
    console.log(search.radius)

    places.textSearch(search, this.placeMarkers.bind(this))
  },
 
  placeMarkers: function(results, status){
    console.log("i'm in the placeMarkers of mapcontroller")

    this.view.clearMarkers(this.markers)
    this.markers = this.venueMarker.createMarkers(results)

    this.view.placeMarkers(this.markers)
    for(var i=0; i < this.markers.length; i++) {
      google.maps.event.addListener(this.markers[i], 'click', this.showLargeInfoWindow.bind(this))
    }

    this.venueDisplayBar(results)


  },

  showLargeInfoWindow:function(){
    var marker = this
    console.log(marker)
    places.getDetails({placeId: marker.place_id},
      function(place, status){
        if(status != google.maps.places.PlaceServiceStatus.OK){
          console.log ("got the place details")
          console.log (results)
        }
      })
  },

  venueDisplayBar:function(results){
    console.log("in the venueDisplayBar of the MapController")
    console.log(results.length)
    this.venueMarker.clearMarkerScrollingBar()
    this.venueMarker.createMarkersScrollingBar(results)
    $('.venues-display').css('visibility', 'visible')

  },

  autoGeolocation: function(){
    console.log ("in the autoGeolocation")
    this.view.clearMarkers(this.markers) //seems to be too slow..and first performing clear markers and then autolocating...check that, how to make faster
    this.view.autoGeolocation()  
  },

  userVenueTypeChoice: function(){
    console.log("i'm in the map controller userVenueTypeChoice")
    var venueTypes = []
    $.each($('input[name="venuetypes"]:checked'), function(key, value){
      venueTypes.push($(value).attr("value"))
    })
    this.venueTypes = venueTypes
    console.log(this.venueTypes)
  },

  getSelectedDistance:function(){
    console.log ("in the getSelectedDistance of Map Controller")
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
      this.venueTypes = ['bar', 'night_club', 'cafe', 'restaurant']
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
