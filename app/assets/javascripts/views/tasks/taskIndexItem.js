GamifyApp.Views.TaskIndexItem = Backbone.CompositeView.extend({
  template: JST['tasks/indexItem'],
  tagName: "li class='list-group-item task'",

  initialize: function(options){
    this.listenTo(this.model, "sync", this.render);
    this.user = options.user;
  },

  events: {
    "click .del": "deleteTask",
    "click .check": "checkTask"
  },

  render: function(){
    this.$el.attr("id", this.model.id);
    this.$el.html(this.template({model: this.model}))
    this.$('.editable').editable("click", this.updateTitle.bind(this))
    this.$('.check').addClass(this.buttonClass)
    this.$el.hover(
      function() {
        $( this ).addClass( "hover list-group-item-info" );
      }, function() {
        $( this ).removeClass( "hover list-group-item-info" );
      }
    );
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
  },

  checkTask: function(event){
    if (!this.$el.hasClass("disabled")){
      var newGold = this.user.get('gold') + this.gold;
      var newXp = this.user.get('xp') + this.xp;
      if (newXp > 10){
        var newLevel = this.user.get('level') + 1;
      } else {
        var newLevel = this.user.get('level');
      }
      this.user.save({gold: newGold, xp: newXp, level: newLevel});
      this.check && this.check(event);
    }
  }
})
