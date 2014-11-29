Handlebars.registerHelper("venuePhotoDisplay",function(photos, icon){
	console.log("I'm in the venuePhoto Handlebars helper")
	var photo 

	if(typeof photos !== 'undefined'){
		return photo = photos[0].getUrl({'maxWidth': 35, 'maxHeight': 35})
	}
	else{
		return icon
	}
})