GamifyApp.Models.User = Backbone.Model.extend({
  urlRoot: "api/users",

  updateStat: function(stat, value, callback){
    newStat = this.get(stat) + value;
    this.set(stat, newStat);
    this.save({}, {success: callback});
  },

  damage: function(value){
    this.updateStat("health", -value);
  },

  heal: function(value){
    this.updateStat("health", value);
  },

  gainXp: function(value){
    this.updateStat("xp", value);
    if (this.get("xp") > 10){
      this.updateStat("level", 1);
    }
  },

  gainGold: function(value){
    this.updateStat("gold", value);
  }
});
