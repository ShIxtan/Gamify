GamifyApp.Views.HabitIndexItem = Backbone.CompositeView.extend({
  template: JST['habits/indexItem'],

  render: function(){
    this.$el.html(this.template({habit: this.model}))
    return this;
  }
})
