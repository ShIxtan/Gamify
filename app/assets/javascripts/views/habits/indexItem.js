GamifyApp.Views.HabitIndexItem = Backbone.CompositeView.extend({
  template: JST['habits/indexItem'],
  tagname: "li class='habit task'",

  events: {
    "click span": "deleteTask"
  },

  render: function(){
    this.$el.html(this.template({habit: this.model}))
    return this;
  },

  deleteTask: function(event){
    event.preventDefault()
    this.model.destroy()
    this.remove()
  }
})
