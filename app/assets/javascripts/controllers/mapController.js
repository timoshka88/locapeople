function MapController(mapView){
	this.view = mapView
}

MapController.prototype = {
	init: function(){
		this.view.drawMap()
	}
}