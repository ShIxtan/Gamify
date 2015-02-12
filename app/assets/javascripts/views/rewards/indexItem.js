GamifyApp.Views.RewardIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options)
    this.gold = -this.model.get('cost');
    this.xp = 0;
    this.buttonClass = "";
    this.$el.addClass("reward");
    this.listenTo(this.user, "change:gold", this.rend.bind(this))
  },

  rend: function(){
    if (this.model.get('cost') > this.user.get('gold')){
      this.$el.addClass("disabled")
    } else {
      this.$el.removeClass("disabled")
    }

    this.$('.coin').addClass("coins")
    this.$el.addClass("list-group-item-warning")
  }
})
