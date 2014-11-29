Handlebars.registerHelper("venuePhotoDisplay",function(photos, icon){
	console.log("I'm in the venuePhoto Handlebars helper")
	var photo 

	if(typeof photos !== 'undefined' && photos.length > 0){
		return photo = photos[0].getUrl({'maxWidth': 130, 'maxHeight': 130})
	}
	else{
		return icon
	}
})