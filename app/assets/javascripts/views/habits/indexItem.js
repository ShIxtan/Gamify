GamifyApp.Views.HabitIndexItem = Backbone.CompositeView.extend({
  template: JST['habits/indexItem'],
  tagname: "li class='habit task'",

  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
  },

  events: {
    "click .btn": "deleteTask"
  },

  render: function(){
    this.$el.html(this.template({habit: this.model}))
    this.$('.editable').editable("click", this.updateTitle.bind(this))
    return this;
  },

  updateTitle: function(event){
    this.model.set("title", event.value);
    this.model.save();
  },

  deleteTask: function(event){
    event.preventDefault()
    this.model.destroy()
    this.remove()
  }
})
