GamifyApp.Views.Header = Backbone.CompositeView.extend({
  template: JST['header/header'],

  render: function(){
    this.$el.html(this.template());
    var nav = new GamifyApp.Views.Navbar();
    var user = new GamifyApp.Views.UserShow({model: this.model})
    this.addSubview('.navbar', nav);
    this.addSubview('.user', user)
    return this;
  }
})
