GamifyApp.Views.TodoIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options)
    this.gold = 10;
    this.buttonClass = "glyphicon-ok";
    this.$el.addClass('todo');
  },

  check: function(event){
    this.deleteTask(event);
  }
})
