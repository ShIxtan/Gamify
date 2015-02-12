GamifyApp.Views.TaskEdit = Backbone.CompositeView.extend({
  template: JST['tasks/taskEdit'],

  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
    this.listenTo(this.collection, "add remove sync", this.render);
  },

  events: {
    "change :checkbox": "saveTask",
    "click .min": "clickMinus",
    "click .plus": "clickPlus",
    "spin .spinner": "updateCost"
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
    this.model.save({"description": event.value});
  },

  updateCost: function(event, ui){
    cost = ui.value
    this.model.save({"cost": cost})
  },

  clickMinus: function(){
    var qual = this.model.get('quality');

    if (qual === "gb"){
      this.model.save({quality: "g"})
    } else if (qual === "g"){
      this.model.save({quality: "gb"})
    }
  },

  clickPlus: function(){
    var qual = this.model.get('quality');

    if (qual === "gb"){
      this.model.save({quality: "b"})
    } else if (qual === "b"){
      this.model.save({quality: "gb"})
    }
  },

  afterRender: function(){
    this.$(".spinner").spinner({
      min: 1,
    });

    this.$(".spinner").spinner("value", this.model.get("cost"));

    if (this.model.get("quality") === "gb"){
      this.$(".plus").addClass("selected")
      this.$(".min").addClass("selected")
    } else if (this.model.get("quality") === "b"){
      this.$(".plus").removeClass("selected");
      this.$(".min").addClass("selected");
    } else {
      this.$(".plus").addClass("selected");
      this.$(".min").removeClass("selected");
    }
  }
})
