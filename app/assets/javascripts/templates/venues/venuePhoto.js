Handlebars.registerHelper("venuePhoto",function(photos, icon){

	vr photo 

	if(typeof photos !== 'undefined'){
		return photo = photos[0].getUrl({'maxWidth': 35, 'maxHeight': 35})
	}
	else{
		return icon
	}
})