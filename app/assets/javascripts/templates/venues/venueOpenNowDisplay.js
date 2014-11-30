Handlebars.registerHelper("venueOpenNowDisplay",function(openBoolean){

	if( openBoolean === true){
		return "assets/open_sign.png"
	}
	else{
		return "assets/close_sign.png"
	}
})