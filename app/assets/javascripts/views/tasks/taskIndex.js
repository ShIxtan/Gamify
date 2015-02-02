GamifyApp.Views.TaskIndex = Backbone.CompositeView.extend({
  template: JST['tasks/index'],

  render: function(){
    this.$el.html(this.template({name: "Habit"}))

    this.collection.each(function(habit){
      habitView = new GamifyApp.Views.HabitIndexItem({model: habit});
      this.addSubview("ul", habitView);
    }, this)

    return this;
  }

});
