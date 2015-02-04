GamifyApp.Views.DailyIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options);
    this.gold = 10;
    this.buttonClass = "glyphicon-ok";
    this.$el.addClass('daily');
    this.isDisabled();
    this.listenTo(this.model, "sync", this.isDisabled);
  },

  isDisabled: function(){
    var yesterday = new Date(new Date().getTime() - (24 * 60 * 60 * 1000));
    var updatedAt = new Date(this.model.get("updated_at"))
    var createdAt = new Date(this.model.get("created_at"))

    if ((yesterday > updatedAt) || (updatedAt.getTime() === createdAt.getTime())){
      this.$el.removeClass("disabled")
    } else {
      this.$el.addClass("disabled")
    }
  },

  check: function(event){
    this.$el.addClass("disabled");
    this.model.save();
  }
})
