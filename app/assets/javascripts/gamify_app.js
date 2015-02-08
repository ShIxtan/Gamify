window.GamifyApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function(id) {
    var user = new GamifyApp.Models.User({id: id})
    user.fetch({
      success: function(){
        new GamifyApp.Routers.Router({$rootEl: $('body'), model: user})
        Backbone.history.start()
      }
    })
  }
};
