GamifyApp.Collections.Tags = Backbone.Collection.extend({
  url: "api/tags",
  model: GamifyApp.Models.Tag,

  initialize: function(){
    this.listenTo(this, "tagToggle", this.tagToggle)
  },

  active: function(){
    this._active = this._active || [];
    return this._active;
  },

  tagToggle: function(){
    this._active = [];
    this.each(function(tag){
      if (tag.isActive()){
        this._active.push(tag.id);
      }
    }, this)

    this.trigger("toggle")
  },
})
