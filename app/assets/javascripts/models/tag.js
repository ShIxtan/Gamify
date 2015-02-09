GamifyApp.Models.Tag = Backbone.Model.extend({
  urlRoot: "api/tags",

  isActive: function(){
    return this._active;
  },

  activate: function(){
    this._active = true;
    this.trigger("tagToggle")
  },

  deactivate: function(){
    this._active = false;
    this.trigger("tagToggle")
  }
});
