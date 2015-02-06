GamifyApp.Models.Reward = GamifyApp.Models.Task.extend({
  urlRoot: "api/rewards",

  initialize: function(){
    this.viewClass = GamifyApp.Views.RewardIndexItem;
  }
});
