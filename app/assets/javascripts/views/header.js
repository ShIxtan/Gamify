GamifyApp.Views.Header = Backbone.CompositeView.extend({
  template: JST['header'],

  render: function(){
    this.$el.html(this.template());
    var nav = new GamifyApp.Views.Navbar();
    this.addSubview('.navbar', nav);
    return this;
  }
})
