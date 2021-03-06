GamifyApp.Views.Header = Backbone.CompositeView.extend({
  template: JST['header/header'],

  initialize: function(){
    this.listenTo(this.model, "updateStat", this.popup);
  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  afterRender: function(){
    var nav = new GamifyApp.Views.Navbar();
    var user = new GamifyApp.Views.UserShow({model: this.model});
    var tags = new GamifyApp.Views.TagsIndex({collection: this.model.tags()});
    this.addSubview('.navbar', nav);
    this.addSubview('.user', user);
    this.addSubview('.tags', tags);
  },

  popup: function(stat, value){
    if (value){
      var popup = new GamifyApp.Views.StatPopup({value: value, stat: stat});
      this.addSubview(".popups", popup);
    }
  }
})
