GamifyApp.Views.TaskIndex = Backbone.CompositeView.extend({
  template: JST['tasks/index'],

  initialize: function(options){
    this.name = options.name;
  },

  render: function(){
    this.$el.html(this.template({name: this.name}))

    this.collection.each(function(task){
      taskView = new GamifyApp.Views.HabitIndexItem({model: task});
      this.addSubview("ul", taskView);
    }, this)

    return this;
  }

});
