GamifyApp.Views.MainView = Backbone.CompositeView.extend({
  template: JST['mainView'],

  render: function(){
    this.$el.html(this.template())
    this.header = new GamifyApp.Views.Header({model: this.model})
    this.habitIndex = new GamifyApp.Views.TaskIndex({name: "habit", collection: this.model.habits(), model: this.model})
    this.dailyIndex = new GamifyApp.Views.TaskIndex({name: "daily", collection: this.model.dailies(), model: this.model})
    this.todoIndex = new GamifyApp.Views.TaskIndex({name: "todo", collection: this.model.todos(), model: this.model})
    this.rewardIndex = new GamifyApp.Views.TaskIndex({name: "reward", collection: this.model.rewards(), model: this.model})
    this.addSubview(".header", this.header);
    this.addSubview(".task-lists", this.habitIndex);
    this.addSubview(".task-lists", this.dailyIndex);
    this.addSubview(".task-lists", this.todoIndex);
    this.addSubview(".task-lists", this.rewardIndex);
    return this;
  }
})
