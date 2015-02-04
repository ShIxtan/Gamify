GamifyApp.Views.HabitIndexItem = GamifyApp.Views.TaskIndexItem.extend({
  initialize: function(options){
    GamifyApp.Views.TaskIndexItem.prototype.initialize.call(this, options)
    this.gold = 5
    this.buttonClass = "glyphicon-plus",
    this.$el.addClass('habit')
  }
})
