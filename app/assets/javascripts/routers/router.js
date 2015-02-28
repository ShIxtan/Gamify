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
        scrollTo: true,
        showCancelLink: true
      }
    });

    tour.addStep ('welcome-step', {
      title: 'Welcome!',
      text: 'Welcome to Gamifi.life! <br><br>We improve productivity by rewarding you for every success.',
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.addStep ('daily-step', {
      text: 'Try preparing your spells to see what happens! Dailies can be performed once per day. <br><br> (we prefer fun names for habits, hover over them to see description)',
      attachTo: ".task.daily right",
      advanceOn: ".check click",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.addStep ('gold-step', {
      text: 'This is your gold. You earn gold every time you do one of your tasks',
      attachTo: ".coins bottom",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.addStep ('reward-step', {
      text: 'Use gold to purchase rewards!',
      attachTo: ".task.reward left",
      advanceOn: ".check click",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.addStep ('habit-step', {
      text: 'Habits can be either good or bad, click the pencil to edit a task',
      attachTo: ".task.habit right",
      advanceOn: ".edit click",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.addStep ('bars-step', {
      text: 'Doing tasks gains experience points. If you get enough XP, you level up! <br><br> Be careful though, missing your dailies or doing bad habits deals damage.',
      attachTo: ".bars right",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.addStep ('graph-step', {
      text: 'Click the graph button to see your hisory with a task',
      attachTo: ".task.habit .graph right",
      advanceOn: ".graph click",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.addStep ('tag-step', {
      text: 'Click tags to see only tasks with that tag.',
      attachTo: ".tags div bottom",
      advanceOn: ".tag click",
      buttons: [
        {text: 'Next',
        action: tour.next}
      ]
    });

    tour.start();
  }
});
