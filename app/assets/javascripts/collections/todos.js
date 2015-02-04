GamifyApp.Collections.Todos = Backbone.Collection.extend({
  url: "api/todos",
  model: GamifyApp.Models.Todo,
  comparator: 'rank'
});
