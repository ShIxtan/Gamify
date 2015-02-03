GamifyApp.Views.TaskIndex = Backbone.CompositeView.extend({
  template: JST['tasks/index'],

  initialize: function(options){
    this.name = options.name;
    this.listenTo(this.collection, "add", this.addIndexItem);
  },

  events: {
    "submit": "createTask",
    "click .add": "createTask"
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
    params = this.$('form').serializeJSON()
    this.$('.task-title').val("")
    task = new GamifyApp.Models.Habit(params)
    tasks = this.collection;

    task.save({}, {
      success: function(){
        tasks.add(task);
      }
    });
  }

});
