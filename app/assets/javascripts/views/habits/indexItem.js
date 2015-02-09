GamifyApp.Views.HabitIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options);
    this.gold = 5;
    this.xp = 1;
    this.damage = 5;
    this.buttonClass = "habit glyphicon-plus";
    this.$el.addClass('habit');
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
    this.user.damage(this.damage);
    this.user.save()
    this.model.click({sign: -1})
  }
})
