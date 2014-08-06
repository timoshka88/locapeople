function PagesView(){
	this.landingPageCanvas = 'landing-canvas'
	// this.imageObj = new Image()
	// this.imageObj.src = 'assets/image27.jpg'
}

PagesView.prototype = {
	drawLandingPageCanvas: function() {
		var canvas = document.getElementById(this.landingPageCanvas);
		var context = canvas.getContext('2d');
		var imageObj = new Image();
		// this.imageObj.onload = imageLoadForLandingPage(this)
		imageObj.onload = function() {
	  	context.drawImage(imageObj, 0,0,imageObj.width,imageObj.height,0,0,canvas.width,canvas.height);
	  };
		imageObj.src = 'assets/image27.jpg';
	}

	// imageLoadForLandingPage: function(obj){
	// 	context.drawImage(obj, 0,0,obj.width,obj.height,0,0,canvas.width,canvas.height);
	// }

};