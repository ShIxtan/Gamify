GamifyApp.Views.MainView = Backbone.CompositeView.extend({
  template: JST['mainView'],

  render: function(){
    this.$el.html(this.template())
    var header = new GamifyApp.Views.Header()
    var habitIndex = new GamifyApp.Views.TaskIndex({name: "habit", collection: this.habits()})
    var dailyIndex = new GamifyApp.Views.TaskIndex({name: "daily", collection: this.dailies()})
    var todoIndex = new GamifyApp.Views.TaskIndex({name: "todo", collection: this.todos()})
    this.addSubview(".header", header);
    this.addSubview(".task-lists", habitIndex);
    this.addSubview(".task-lists", dailyIndex);
    this.addSubview(".task-lists", todoIndex);
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
  },

  todos: function(){
    if (!this._todos){
      this._todos = new GamifyApp.Collections.Todos()
    }

    this._todos.fetch();
    return this._todos;
  }
})
