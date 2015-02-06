GamifyApp.Models.Task = Backbone.Model.extend({
  click: function(opts) {
    var url = this.url() + '/click',

    options = {
      url: url,
      type: 'POST',
      data: {sign: opts.sign}
    };

    // add any additional options, e.g. a "success" callback or data
    _.extend(options, opts);

    return (this.sync || Backbone.sync).call(this, null, this, options);
  },
})
