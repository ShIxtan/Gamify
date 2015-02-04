GamifyApp.Models.Daily = Backbone.Model.extend({
  urlRoot: "api/dailies",

  initialize: function(){
    this.viewClass = GamifyApp.Views.DailyIndexItem;
  }
});
