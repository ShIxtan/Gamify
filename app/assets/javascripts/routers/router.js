GamifyApp.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "mainView"
  },

  mainView: function(){
    this._mainView = new GamifyApp.Views.MainView();
    this.$rootEl.addClass("main")
    this.$rootEl.html(this._mainView.render().$el);
  }
});
