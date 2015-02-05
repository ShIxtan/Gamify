GamifyApp.Views.StatPopup = Backbone.CompositeView.extend({
  template: JST['header/statPopup'],
  tagname: "li",

  initialize: function(options){
    this.value = options.value;
    this.stat = options.stat;
  },

  render: function(){
    this.$el.html(this.template({value: this.value, stat: this.stat}))
    var that = this
    setTimeout(function(){
      that.remove();
    }, 10000);
    return this
  }
})
