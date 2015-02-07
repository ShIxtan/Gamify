GamifyApp.Models.Task = Backbone.Model.extend({
  click: function(opts) {
    var url = this.url() + '/click';
    var that = this;

    $.ajax({
      url: url,
      type: 'POST',
      data: {sign: opts.sign},
      success: function(){
        that.fetch();
      }
    });
  },
})
