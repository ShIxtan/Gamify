GamifyApp.Views.TaskIndex = Backbone.CompositeView.extend({
  template: JST['tasks/index'],

  initialize: function(options){
    this.name = options.name;
    this.listenTo(this.collection, "add", this.addIndexItem);
  },

  events: {
    "submit": "createTask",
    "click .add": "createTask",
    "sortstop": "updateOrder"
  },

  render: function(){
    this.$el.html(this.template({name: this.name}))
    this.collection.each(this.addIndexItem)
    this.$('.task-list').sortable();
    return this;
  },

  addIndexItem: function(task){
    taskView = new GamifyApp.Views.HabitIndexItem({model: task});
    this.addSubview("ul", taskView);
  },

  createTask: function(event){
    event.preventDefault();
    params = this.$('form').serializeJSON();
    params.rank = this.collection.length;
    this.$('.task-title').val("");
    this.collection.create(params);
  },

  updateOrder: function(){
    var sortedIds = $(".task-list").sortable("toArray")
    var that = this

    this.collection.each(function(task){
      var rank = sortedIds.indexOf(task.id.toString())
      task.set({rank: rank});
      task.save();
    });
  }

});
