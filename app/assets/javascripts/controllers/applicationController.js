ApplicationController = function(pagesController) {
  this.pagesController = pagesController
}

ApplicationController.prototype= {
  init: function() {
    console.log("I'm in the application controller")
    this.pagesController.init()

  }
}
