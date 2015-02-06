GamifyApp.Models.Habit = GamifyApp.Models.Task.extend({
  urlRoot: "api/habits",

  initialize: function(){
    this.viewClass = GamifyApp.Views.HabitIndexItem;
  }
});
