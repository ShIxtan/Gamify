GamifyApp.Models.Daily = GamifyApp.Models.Task.extend({
  urlRoot: "api/dailies",

  initialize: function(){
    this.viewClass = GamifyApp.Views.DailyIndexItem;
  }
});
