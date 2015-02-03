GamifyApp.Views.MainView = Backbone.CompositeView.extend({
  template: JST['mainView'],

  render: function(){
    this.$el.html(this.template())
    header = new GamifyApp.Views.Header()
    habitIndex = new GamifyApp.Views.TaskIndex({name: "habit", collection: this.habits()})
    this.addSubview(".header", header);
    this.addSubview(".task-lists", habitIndex);
    return this;
  },

  habits: function(){
    if (!this._habits){
      this._habits = new GamifyApp.Collections.Habits()
    }

    this._habits.fetch();
    return this._habits;
  }
})
