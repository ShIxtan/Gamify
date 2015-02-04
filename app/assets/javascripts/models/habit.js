GamifyApp.Models.Habit = Backbone.Model.extend({
  urlRoot: "api/habits",

  initialize: function(){
    this.viewClass = GamifyApp.Views.HabitIndexItem;
  }
});
