GamifyApp.Views.DailyIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options);
    this.gold = 10;
    this.xp = 1
    this.damage = 5
    this.buttonClass = "glyphicon-unchecked";
    this.$el.addClass('daily');
    this.isDisabled();
    this.doDamage();
    this.listenTo(this.model, "sync", this.isDisabled);
  },

  isDisabled: function(){
    var midnight = new Date();
    midnight.setHours(0,0,0,0);
    if (this.model.get("last_checked")){
      var lastChecked = new Date(this.model.get("last_checked"))
    }

    if (!lastChecked || (midnight > lastChecked)){
      this.$el.removeClass("disabled")
      this.buttonClass = "glyphicon-unchecked"
    } else {
      this.$el.addClass("disabled")
      this.buttonClass = "glyphicon-ok"
    }

    this.render()
  },

  doDamage: function(){
    var midnight = new Date();
    midnight.setHours(0,0,0,0);
    var yesterday = new Date(new Date().getTime() - (24 * 60 * 60 * 1000));
    yesterday.setHours(0,0,0,0);
    var createdAt = new Date(this.model.get("created_at"));

    if (this.model.get("last_checked")){
      var lastChecked = new Date(this.model.get("last_checked"));
    }

    if ((yesterday > lastChecked) || (!lastChecked && (createdAt < midnight))){
      this.model.save({"last_checked": new Date()});
      health = this.user.get("health") - this.damage;
      this.user.save({health: health});
    }
  },

  check: function(event){
    this.$el.addClass("disabled");
    var now = new Date();
    this.model.save({"last_checked": now});
  }
})
