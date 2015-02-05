GamifyApp.Views.StatPopup = Backbone.CompositeView.extend({
  template: JST['header/statPopup'],
  tagName: "li class='popup'",

  initialize: function(options){
    this.value = options.value;
    this.stat = options.stat;
  },

  render: function(){
    this.$el.html(this.template({value: this.value, stat: this.stat}))
    var that = this
    this.$el.addClass(this.stat)
    setTimeout(function(){
      that.remove();
    }, 10000);
    return this
  }
})
