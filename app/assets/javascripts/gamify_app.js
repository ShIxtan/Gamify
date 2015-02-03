window.GamifyApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new GamifyApp.Routers.Router({$rootEl: $('body')})
    Backbone.history.start()
  }
};
