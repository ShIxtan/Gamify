GamifyApp.Views.Navbar = Backbone.CompositeView.extend({
  template: JST['nav'],

  render: function(){
    this.$el.html(this.template())
    return this
  }
})
