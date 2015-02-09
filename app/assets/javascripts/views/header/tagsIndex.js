GamifyApp.Views.TagsIndex = Backbone.CompositeView.extend({
  template: JST['header/tagsIndex'],

  initialize: function(){
    this.listenTo(this.collection, "add", this.addTag.bind(this))
  },

  events: {
    "submit": "newTag",
    "click .new-tag": "newTag",
    "click .delete": "toggleDelete"
  },

  render: function(){
    this.$el.html(this.template());
    this.collection.each(this.addTag.bind(this))
    return this;
  },

  addTag: function(tag){
    var tagView = new GamifyApp.Views.TagIndexItem({model: tag})
    this.addSubview(".tags-list", tagView);
  },

  newTag: function(event){
    event.preventDefault();

    if (this.$('.name').val()){
      params = this.$('.new-tag-form').serializeJSON();
      this.collection.create(params);
      this.$('.name').val("")
    }
  },

  toggleDelete: function(){
    if (this.$('.delete').hasClass("on")){
      this.$('.delete.on').removeClass("on")
      this.$('.tag').removeClass("delete")
    } else {
      this.$('.delete').addClass("on");
      this.$('.tag').addClass("delete");
    }
  }
})
