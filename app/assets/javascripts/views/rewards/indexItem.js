GamifyApp.Views.RewardIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options)
    this.gold = -10;
    this.xp = 0;
    this.buttonClass = "glyphicon-minus";
    this.$el.addClass("reward");
  }
})
