function MapView(){
	this.mapSelector = 'map-canvas'
}

MapView.prototype = {
	drawMap: function(){
		this.map = new google.maps.Map(document.getElementById(this.mapSelector), mapOptions);
	}
}