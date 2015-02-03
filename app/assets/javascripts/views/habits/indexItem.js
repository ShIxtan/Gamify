GamifyApp.Views.HabitIndexItem = Backbone.CompositeView.extend({
  template: JST['habits/indexItem'],
  tagname: "li class='habit task'",

  render: function(){
    this.$el.html(this.template({habit: this.model}))
    return this;
  }
})
