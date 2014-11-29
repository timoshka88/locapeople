Handlebars.registerHelper("venuePriceDisplay",function(thePrice){

	if(thePrice === 1){
		return "$"
	}
	else if (thePrice === 2) {
		return "$$"
	}
	else if (thePrice === 3) {
		return "$$$"
	}
	else{
		return "$$$$"
	}
})