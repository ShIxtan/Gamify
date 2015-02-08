GamifyApp.Views.MainView = Backbone.CompositeView.extend({
  template: JST['mainView'],

  render: function(){
    this.$el.html(this.template())
    var header = new GamifyApp.Views.Header({model: this.model})
    var habitIndex = new GamifyApp.Views.TaskIndex({name: "habit", collection: this.model.habits(), model: this.model})
    var dailyIndex = new GamifyApp.Views.TaskIndex({name: "daily", collection: this.model.dailies(), model: this.model})
    var todoIndex = new GamifyApp.Views.TaskIndex({name: "todo", collection: this.model.todos(), model: this.model})
    var rewardIndex = new GamifyApp.Views.TaskIndex({name: "reward", collection: this.model.rewards(), model: this.model})
    this.addSubview(".header", header);
    this.addSubview(".task-lists", habitIndex);
    this.addSubview(".task-lists", dailyIndex);
    this.addSubview(".task-lists", todoIndex);
    this.addSubview(".task-lists", rewardIndex);
    return this;
  }
})
