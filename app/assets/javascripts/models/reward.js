GamifyApp.Models.Reward = Backbone.Model.extend({
  urlRoot: "api/rewards",

  initialize: function(){
    this.viewClass = GamifyApp.Views.RewardIndexItem;
  }
});
