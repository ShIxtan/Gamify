GamifyApp.Views.HabitIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options);
    this.gold = 5;
    this.xp = 1;
    this.damage = 5;
    this.buttonClass = "glyphicon-plus";
    this.$el.addClass('habit');
  },

  events: {
    "click .minus": "doDamage"
  },

  render: function(){
    GamifyApp.Views.TaskIndexItem.prototype.render.call(this);
    if (this.model.get("quality") === "gb"){
      this.$(".hide").removeClass("hide");
    } else if (this.model.get("quality") === "b"){
      this.$(".hide").removeClass("hide");
      this.$(".check").addClass("hide");
    }
    return this;
  },

  doDamage: function(){
    health = this.user.get("health") - this.damage;
    this.user.save({health: health});
  }
})
