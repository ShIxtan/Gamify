GamifyApp.Models.Todo = GamifyApp.Models.Task.extend({
  urlRoot: "api/todos",

  initialize: function(){
    this.viewClass = GamifyApp.Views.TodoIndexItem;
  },

  click: function(){
    //prevents ajax from being called
  }
});
