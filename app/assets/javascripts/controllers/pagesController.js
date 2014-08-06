function PagesController(view){
	this.view = view
}

PagesController.prototype = {
	init: function(){
		console.log("I'm in the Pages controller")
		this.view.drawLandingPageCanvas()
	}
};