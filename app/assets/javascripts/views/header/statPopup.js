GamifyApp.Views.StatPopup = Backbone.CompositeView.extend({
  template: JST['header/statPopup'],
  tagName: "li class='popup'",

  initialize: function(options){
    this.value = options.value;
    this.stat = options.stat;
  },

  events: {
    "click": "afterRender"
  },

  render: function(){
    this.$el.html(this.template({value: this.value, stat: this.stat}))
    this.$el.addClass(this.stat)
    this.$el.hide( "drop", { direction: "right" }, 10);
    return this
  },

  afterRender: function(){
    var that = this
    this.$el.show("drop", { direction: "right",
                            easing: "easeOutElastic"},
                            600,
                            function() {
                              setTimeout(function () {
                                that.$el.hide( "drop", { direction: "right" }, 1000, function(){
                                  that.remove();
                                });
                              }, 4000);
                            });
  }
})
