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
    this.view.callPlaceApi()
    this.setListeners()
    // this.setAjaxListeners()
    this.autoGeolocation()
    this.autocomplete = this.view.googleAutocomplete()

	},

  setListeners:function(){
    // document.getElementById('autocomplete').addEventListener("change", this.view.onPlaceChange.bind(this.view))
    $("input[type=checkbox]").on('click',this.userVenueTypeChoice.bind(this))
    // $("form").submit(this.view.onPlaceChange.bind(this.view))
    $("form").submit(this.onPlaceChange.bind(this))
    // $('#autocomplete').change(this.view.onPlaceChange.bind(this))
    $('#distance').change(this.changeDistanceValue.bind(this))
    $('#distance').change(this.changeDistanceValue.bind(this))
    $('#my-location').on('click', this.autoGeolocation.bind(this))
  },

  setAjaxListeners: function(){
    console.log("I'm in the setAjaxListeners function of MapController")
    // $('#distance').change(this.changeDistanceValue.bind(this))
    $('#search').on('ajax:success', this.placeMarkers.bind(this))
    $('#search').on('ajax:success', this.venueDisplayBar.bind(this))
    $('#search').on('ajax:success', this.clearForm.bind(this))
    $('#search').on('ajax:error', function(){console.log("Error while searching")})
    // $('#my-location').on('click', this.autoGeolocation.bind(this))
  },

  changeDistanceValue:function(event){
    console.log ("in the changeDistanceValue")
    $("#kmValue").val(event.target.value + 'km')
  },

  onPlaceChange:function(){
    console.log("in the onPlaceChange of MapController")
    // this.places = this.view.callPlaceApi()
    // autocomplete = this.view.googleAutocomplete()
    
    console.log('this is autocomplete')
    console.log(autocomplete)
  
   

    this.checkTypeSelection()
    this.checkDistanceSelection()
    

    this.query = "establishments " + autocomplete.gm_accessors_.place.td.formattedPrediction
    console.log(this.query)
    
    // this.place = autocomplete.getPlace()
    console.log(autocomplete.gm_accessors_.place.td.place.geometry.location)
    this.place = autocomplete.gm_accessors_.place.td.place
    if (this.place.geometry){
      this.view.centerMaponSearch(this.place.geometry)
      // map.panTo(this.place.geometry.location)
      // map.setZoom(15)
      this.search()
    }

  },

  search:function(){
    console.log("i'm in the search")
    this.places = this.view.callPlaceApi()
    console.log(this.venueTypes)
    console.log(this.distanceValue)
    // console.log(this.query)
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

    places.textSearch(search, function(results, status){
      console.log(results)
      // this.markers = this.venueMarker.createMarkers(results)

    })
  },
 
  placeMarkers: function(event, response){
    console.log("i'm in the placeMarkers of mapcontroller")
    this.view.clearMarkers(this.markers)
    this.markers = this.venueMarker.createMarkers(response.venues)
    this.view.placeMarkers(this.markers)
    this.view.centerMap(response.center_coords)
  },

  venueDisplayBar:function(event, response){
    console.log(response.venues.length)
    this.venueMarker.clearMarkerScrollingBar()
    this.venueMarker.createMarkersScrollingBar(response.venues)
    $('.venues-display').css('visibility', 'visible')

  },

  autoGeolocation: function(){
    console.log ("in the autoGeolocation")
    this.view.clearMarkers(this.markers) //seems to be too slow..and first performing clear markers and then autolocating...check that, how to make faster
    this.view.autoGeolocation()  
  },

  clearForm: function(){
    $('input[type="text"], textarea').val('');
    $("input:checkbox").attr('checked', false)
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
