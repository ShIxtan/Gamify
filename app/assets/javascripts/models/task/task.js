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

  parse: function(resp){
    if (resp.tags) {
      this.tags().set(resp.tags, { parse: true });
      delete resp.tags;
    }

    return resp
  },

  tags: function(){
    if (!this._tags){
      this._tags = new GamifyApp.Collections.Tags()
    }

    return this._tags;
  }
})
