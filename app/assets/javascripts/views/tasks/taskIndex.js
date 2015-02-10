GamifyApp.Views.TaskIndex = Backbone.CompositeView.extend({
  template: JST['tasks/index'],
  tagName: "div class='task-box col-md-3'",

  initialize: function(options){
    this.name = options.name;
    this.listenTo(this.collection, "add", this.addIndexItem.bind(this));
    this.listenTo(this.model.tags(), "toggle", this.tagToggle);
  },

  events: {
    "submit": "createTask",
    "click .add": "createTask",
    "sortstop": "updateOrder",
    "mouseenter .edit": "onAccordion",
    "mouseleave .edit": "offAccordion",
    "offAccordion li": "offAccordion",
    "refresh li": "refreshAccordion"
  },

  render: function(){
    this.$el.html(this.template({name: this.name}))
    this.$('.task-list').accordion({
      active: false,
      collapsible: true,
      header: "> li > .item",
      disabled: true,
      animate: false
    }).sortable({
      handle: ".item",
      placeholder: "task-shadow task list-group-item",
      forcePlaceholderSize: true
    });
    this.collection.each(this.addIndexItem.bind(this))
    return this;
  },

  onAccordion: function(){
    this.$('.task-list').accordion( "enable" );
  },

  offAccordion: function(){
    this.$('.task-list').accordion( "disable" );
  },

  refreshAccordion: function(event, ui){
    var active = this.$( ".task-list" ).accordion( "option", "active" );
    this.$('.task-list').accordion( "refresh" );
    this.$( ".task-list" ).accordion( "option", "active", active );
  },

  addIndexItem: function(task){
    taskView = new task.viewClass ({model: task, user: this.model});
    this.addSubview(".task-list", taskView);
    this.refreshAccordion();
  },

  createTask: function(event){
    event.preventDefault();
    params = this.$('form').serializeJSON();
    if (params.title){
      this.$('.task-title').val("");
      this.collection.create(params);
    }
  },

  updateOrder: function(event, ui){
    var sortedIds = this.$(".task-list").sortable("toArray")
    var that = this;

    this.collection.each(function(task){
      var rank = sortedIds.indexOf(task.id.toString())
      task.set({rank: rank});
      task.save();
    });
    this.refreshAccordion();
    this.$( ".task-list" ).accordion( "option", "active", false);
  },

  afterRender: function(){
    this.refreshAccordion();
    Backbone.CompositeView.prototype.afterRender.call(this)
  },

  tagToggle: function(){
    if (this.model.tags().active().length === 0){
      this.attachSubviews()
    } else {
      this.subviews().each(function(subviews){
        subviews.each(function(view){
          _(this.model.tags().active()).each(function(tag){
            if (view.model.tags().get(tag.id)){
              this.attachSubview(".task-list", view);
            } else {
              view.remove();
            }
          }, this)
        }, this)
      }, this)
    }
    this.afterRender();
  }
});
