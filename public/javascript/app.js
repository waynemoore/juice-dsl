(function($) {
  'use strict';

  var Juice = Backbone.Model.extend({});

  var Juices = Backbone.Collection.extend({
    model: Juice,
    url: '/juices'
  });

  var JuiceView = Backbone.View.extend({

    tagName: 'li',

    render: function() {
      this.$el.text(this.model.toJSON().name);
      return this;
    }

  });

  var AppView = Backbone.View.extend({
    el: '#app',

    initialize: function() {
      this.juices = new Juices();
      this.listenTo(this.juices, 'reset', this.render);
      this.juices.fetch({reset: true});
    },

    render: function() {
      $('#juices').html('');
      var list = $('<ul>');
      this.juices.each(function(juice) {
        list.append(new JuiceView({model: juice}).render().el);
      });
      $('#juices').append(list);
    }

  });

  window.appView = new AppView();

})(jQuery);