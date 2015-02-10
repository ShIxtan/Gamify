GamifyApp.Views.TaskGraph = Backbone.CompositeView.extend({
  template: JST["tasks/graph"],

  render: function(){
    this.$el.html(this.template());
    return this;
  }
})
