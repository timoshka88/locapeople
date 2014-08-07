$(document).ready(function(){
	
	applicationController = new ApplicationController(new PagesController(new PagesView())).init();

})