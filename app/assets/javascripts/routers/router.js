GamifyApp.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.$rootEl = options.$rootEl
    this.model = options.model
  },

  routes: {
    "": "mainView"
  },

  mainView: function(){
    this._mainView = new GamifyApp.Views.MainView({model: this.model});
    this.$rootEl.html(this._mainView.render().$el);
  }
});
