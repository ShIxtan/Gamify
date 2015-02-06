GamifyApp.Views.TaskIndexItem = Backbone.CompositeView.extend({
  template: JST['tasks/indexItem'],
  tagName: "li class='list-group-item task'",

  initialize: function(options){
    this.listenTo(this.model, "sync", this.render);
    this.user = options.user;
  },

  events: {
    "click .del": "deleteTask",
    "click .check": "checkTask",
    "click .minus": "doDamage",
    "click .save": "saveTask"
  },

  render: function(){
    this.$el.attr("id", this.model.id);
    this.$el.html(this.template({model: this.model}));
    this.$('.editable').editable("click", this.updateTitle.bind(this));
    this.$('.check').addClass(this.buttonClass);
    this.$el.trigger("refresh");
    this.$('.item').tooltip({
      container: ".editable"
    });
    return this;
  },

  updateTitle: function(event){
    this.model.set("title", event.value);
    this.model.save();
  },

  saveTask: function(){
    var description = this.$('.description').val()
    this.model.save({description: description})
  },

  deleteTask: function(event){
    event.preventDefault()
    this.model.destroy()
    this.remove()
  },

  checkTask: function(event){
    if (!this.$el.hasClass("disabled")){
      this.user.gainGold(this.gold);
      this.user.gainXp(this.xp);
      this.check && this.check(event);
    }
  }
})
