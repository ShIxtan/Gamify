GamifyApp.Views.RewardIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options)
    this.gold = -this.model.get('cost');
    this.xp = 0;
    this.buttonClass = "";
    this.$el.addClass("reward");
  }
})
