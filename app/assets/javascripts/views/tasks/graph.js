GamifyApp.Views.TaskGraph = Backbone.CompositeView.extend({
  template: JST["tasks/graph"],

  initialize: function(options){
    this.clicks = options.clicks;
    this.data = {
      labels: this.clicks.labels,
      datasets: [{
        label: "My Second dataset",
        fillColor: "rgba(151,187,205,0.2)",
        strokeColor: "rgba(151,187,205,1)",
        pointColor: "rgba(151,187,205,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(151,187,205,1)",
        data: this.clicks.data
      }]
    }
  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  afterRender: function(){
    var ctx = this.$('.chart')[0].getContext("2d");
    var graph = new Chart(ctx).Line(this.data, {pointHitDetectionRadius : 1})
  }
})
