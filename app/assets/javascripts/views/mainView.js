GamifyApp.Views.MainView = Backbone.CompositeView.extend({
  template: JST['mainView'],

  render: function(){
    this.$el.html(this.template())
    var header = new GamifyApp.Views.Header({model: this.user()})
    var habitIndex = new GamifyApp.Views.TaskIndex({name: "habit", collection: this.habits(), model: this.user()})
    var dailyIndex = new GamifyApp.Views.TaskIndex({name: "daily", collection: this.dailies(), model: this.user()})
    var todoIndex = new GamifyApp.Views.TaskIndex({name: "todo", collection: this.todos(), model: this.user()})
    var rewardIndex = new GamifyApp.Views.TaskIndex({name: "reward", collection: this.rewards(), model: this.user()})
    this.addSubview(".header", header);
    this.addSubview(".task-lists", habitIndex);
    this.addSubview(".task-lists", dailyIndex);
    this.addSubview(".task-lists", todoIndex);
    this.addSubview(".task-lists", rewardIndex);
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
  },

  rewards: function(){
    if (!this._rewards){
      this._rewards = new GamifyApp.Collections.Rewards()
    }

    this._rewards.fetch();
    return this._rewards;
  },

  user: function(){
    if (!this._user){
      this._user = new GamifyApp.Models.User()
    }

    this._user.fetch();
    return this._user;
  }
})
