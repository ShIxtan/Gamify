GamifyApp.Models.Todo = GamifyApp.Models.Task.extend({
  urlRoot: "api/todos",

  initialize: function(){
    this.viewClass = GamifyApp.Views.TodoIndexItem;
  },

  click: function(){
    //override default click to prevent failed ajax
  }
});
