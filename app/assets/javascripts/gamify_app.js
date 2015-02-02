window.GamifyApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new GamifyApp.Routers.Router()
    Backbone.history.start()
  }
};

$(document).ready(function(){
  GamifyApp.initialize();
});
