GamifyApp.Collections.Rewards = Backbone.Collection.extend({
  url: "api/rewards",
  model: GamifyApp.Models.Reward,
  comparator: 'rank'
});
