function PagesView(){
	console.log("I'm here in the PagesView model")
	this.landingPageCanvas = 'landing-canvas'
}

PagesView.prototype = {
	drawLandingPageCanvas: function() {
		var canvas = document.getElementById(this.landingPageCanvas);
		var context = canvas.getContext('2d');
		var imageObj = new Image();
		imageObj.onload = function() {
	  	context.drawImage(imageObj, 0,0,imageObj.width,imageObj.height,0,0,canvas.width,canvas.height);
	  };
		imageObj.src = 'assets/image27.jpg';
	}

};