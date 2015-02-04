GamifyApp.Models.Todo = Backbone.Model.extend({
  urlRoot: "api/todos",

  initialize: function(){
    this.viewClass = GamifyApp.Views.TodoIndexItem;
  }
});
