GamifyApp.Views.Header = Backbone.CompositeView.extend({
  template: JST['header/header'],

  initialize: function(){
    this.listenTo(this.model, "updateStat", this.popup);
  },

  render: function(){
    this.$el.html(this.template());
    var nav = new GamifyApp.Views.Navbar();
    var user = new GamifyApp.Views.UserShow({model: this.model})
    this.addSubview('.navbar', nav);
    this.addSubview('.user', user)
    return this;
  },

  popup: function(stat, value){
    var popup = new GamifyApp.Views.StatPopup({value: value, stat: stat});
    this.addSubview(".popups", popup);
  }
})
