GamifyApp.Views.MainView = Backbone.CompositeView.extend({
  template: JST['mainView'],

  render: function(){
    this.$el.html(this.template())
    header = new GamifyApp.Views.Header()
    habitIndex = new GamifyApp.Views.TaskIndex({name: "habit", collection: this.habits()})
    dailyIndex = new GamifyApp.Views.TaskIndex({name: "daily", collection: this.dailies()})
    this.addSubview(".header", header);
    this.addSubview(".task-lists", habitIndex);
    this.addSubview(".task-lists", dailyIndex)
    return this;
  },

  habits: function(){
    if (!this._habits){
      this._habits = new GamifyApp.Collections.Habits()
    }

    this._habits.fetch();
    return this._habits;
  },

  dailies: function(){
    if (!this._dailies){
      this._dailies = new GamifyApp.Collections.Dailies()
    }

    this._dailies.fetch();
    return this._dailies;
  }
})
