GamifyApp.Views.UserShow = Backbone.CompositeView.extend({
  template: JST['header/userShow'],
  tagName: "h1",

  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
  },

  render: function(){
    this.$el.html(this.template({user: this.model}));
    return this;
  }
})
