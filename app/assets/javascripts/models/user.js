GamifyApp.Models.User = Backbone.Model.extend({
  urlRoot: "api/users",

  updateStat: function(stat, value){
    var newStat = this.get(stat) + value;
    this.set(stat, newStat);
    this.trigger("updateStat", stat, value);
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
  },

  parse: function(resp){
    var user = resp.user

    if (user.habits) {
      this.habits().set(user.habits, { parse: true });
      delete user.habits;
    }

    if (user.rewards) {
      this.rewards().set(user.rewards, { parse: true });
      delete user.rewards;
    }

    if (user.todos) {
      this.todos().set(user.todos, { parse: true });
      delete user.todos;
    }

    if (user.dailies) {
      this.dailies().set(user.dailies, { parse: true });
      delete user.dailies;
    }

    if (user.tags) {
      this.tags().set(user.tags, { parse: true });
      delete user.tags;
    }

    return user;
  },

  habits: function(){
    if (!this._habits){
      this._habits = new GamifyApp.Collections.Habits()
    }

    return this._habits;
  },

  dailies: function(){
    if (!this._dailies){
      this._dailies = new GamifyApp.Collections.Dailies()
    }

    return this._dailies;
  },

  todos: function(){
    if (!this._todos){
      this._todos = new GamifyApp.Collections.Todos()
    }

    return this._todos;
  },

  rewards: function(){
    if (!this._rewards){
      this._rewards = new GamifyApp.Collections.Rewards()
    }

    return this._rewards;
  },

  tags: function(){
    if (!this._tags){
      this._tags = new GamifyApp.Collections.Tags()
    }

    return this._tags;
  }

});
