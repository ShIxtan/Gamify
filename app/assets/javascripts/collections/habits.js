GamifyApp.Collections.Habits = Backbone.Collection.extend({
  url: "api/habits",
  model: GamifyApp.Models.Habit,

  comparator: 'rank'
});
