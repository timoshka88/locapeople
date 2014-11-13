function Venue(venueData){
	this.googlePlaceId = venueData.place_id
	this.venueName = venueData.venueName
	this.latLng = venueData.geometry.location
	this.googleIcon = venueData.icon
	this.address = venueData.formatted_address
}