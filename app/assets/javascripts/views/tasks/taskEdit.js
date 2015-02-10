GamifyApp.Views.TaskEdit = Backbone.CompositeView.extend({
  template: JST['tasks/taskEdit'],

  initialize: function(){
    this.listenTo(this.model, "change", this.render)
    this.listenTo(this.collection, "add remove change", this.render);
  },

  events: {
    "change :checkbox": "saveTask"
  },

  render: function(){
    this.$el.html(this.template({task: this.model, tags: this.collection}));
    this.$('.description .editable').editable("click", this.updateDescription.bind(this));
    return this;
  },

  saveTask: function(){
    var params = this.$('.options').serializeJSON();
    this.model.save(params);
  },

  updateDescription: function(event){
    this.model.set("description", event.value);
    this.model.save();
  },
})
