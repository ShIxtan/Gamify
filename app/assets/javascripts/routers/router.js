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
    this.startTour();
  },

  startTour: function(){
    var tour = new Shepherd.Tour({
      defaults: {
        classes: 'shepherd-element shepherd-open shepherd-theme-default',
        scrollTo: true
      }
    });

    tour.addStep ('navbar-step', {
      text: 'This step is attached to the bottom of the navbar element.',
      classes: "shepherd-theme-default",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.start();
  }
});
