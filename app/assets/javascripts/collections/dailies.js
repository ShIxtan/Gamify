GamifyApp.Collections.Dailies = Backbone.Collection.extend({
  url: "api/dailies",
  model: GamifyApp.Models.Daily,
  comparator: 'rank'
});
