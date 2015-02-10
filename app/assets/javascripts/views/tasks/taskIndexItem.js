GamifyApp.Views.TaskIndexItem = Backbone.CompositeView.extend({
  template: JST['tasks/indexItem'],
  tagName: "li class='list-group-item task'",

  initialize: function(options){
    this.user = options.user;
  },

  events: {
    "click .del": "deleteTask",
    "click .check": "checkTask",
    "click .minus": "doDamage",
    "click .edit": "renderEdit"
  },

  render: function(){
    this.$el.attr("id", this.model.id);
    this.$el.html(this.template({task: this.model}));
    this.$('.title .editable').editable("click", this.updateTitle.bind(this));
    this.$('.check').addClass(this.buttonClass);
    this.renderStrength()
    this.$el.trigger("refresh");
    return this;
  },

  renderEdit: function(){
    this.removeSubviews();
    boxView = new GamifyApp.Views.TaskEdit({model: this.model, collection: this.user.tags()});
    this.addSubview(".item-box", boxView);
  },

  renderStrength: function(){
    var str = this.model.get("strength");

    this.$el.removeClass("list-group-item-danger");
    this.$el.removeClass("list-group-item-warning");
    this.$el.removeClass("list-group-item-info");
    this.$el.removeClass("list-group-item-success");
    this.$el.removeClass("list-group-item-primary");

    if (str === 1){
      this.$el.addClass("list-group-item-danger");
    } else if (str === 2){
      this.$el.addClass("list-group-item-warning");
    } else if (str === 3){
      this.$el.addClass("list-group-item-info");
    } else if (str === 4){
      this.$el.addClass("list-group-item-success");
    } else if (str === 5){
      this.$el.addClass("list-group-item-primary");
    }
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
      this.check && this.check(event);
      this.user.gainGold(this.gold);
      this.user.gainXp(this.xp);
      this.user.save();
      this.model.click({sign: 1})
    }
  },

  afterRender: function(){
    this.$('.title .editable').editable("click", this.updateTitle.bind(this));
    if (this.model.get("description")){
      this.$('.tip').tipr({'mode': 'top'});
    }
  }
})
