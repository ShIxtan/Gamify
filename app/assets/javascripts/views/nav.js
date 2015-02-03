GamifyApp.Views.Navbar = Backbone.CompositeView.extend({
  template: JST['nav'],
  tagName: 'div class="navbar-inner"',

  render: function(){
    this.$el.html(this.template())
    return this
  }
})
