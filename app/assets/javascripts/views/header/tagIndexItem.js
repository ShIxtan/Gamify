GamifyApp.Views.TagIndexItem = Backbone.CompositeView.extend({
  template: JST['header/tagIndexItem'],
  tagName: "li class='tag'",

  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
  },

  events: {
    "click": "handleClick"
  },

  render: function(){
    this.$el.html(this.template({tag: this.model}));
    return this;
  },

  handleClick: function(){
    if (this.$el.hasClass("delete")){
      this.deleteTag();
    } else {
      this.toggleActive();
    }
  },

  toggleActive: function(){
    if (this.model.isActive()){
      this.model.deactivate();
      this.$el.removeClass("active");
    } else {
      this.model.activate();
      this.$el.addClass("active");
    }
  },

  deleteTag: function(){
    this.model.destroy();
    this.remove();
  }
})
