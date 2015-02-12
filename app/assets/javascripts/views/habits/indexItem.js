GamifyApp.Views.HabitIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options);
    this.gold = 5;
    this.xp = 1;
    this.damage = 5;
    this.buttonClass = "habit glyphicon-plus";
    this.$el.addClass('habit');
  },

  afterRender: function(){
    GamifyApp.Views.TaskIndexItem.prototype.afterRender.call(this);

    if (this.model.get("quality") === "gb"){
      this.$('.checks').addClass("gb")
      this.$(".hide").removeClass("hide");
      this.$(".plus").addClass("selected")
      this.$(".min").addClass("selected")
    } else if (this.model.get("quality") === "b"){
      this.$('.checks').removeClass("gb")
      this.$(".hide").removeClass("hide");
      this.$(".check").addClass("hide");
      this.$(".plus").removeClass("selected");
      this.$(".min").addClass("selected");
    } else {
      this.$('.checks').removeClass("gb")
      this.$(".hide").removeClass("hide");
      this.$(".minus").addClass("hide")
      this.$(".plus").addClass("selected");
      this.$(".min").removeClass("selected");
    }
    return this;
  },

  doDamage: function(){
    this.user.damage(this.damage);
    this.user.save()
    this.model.click({sign: -1})
  }
})
