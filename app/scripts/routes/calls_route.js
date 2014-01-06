CincyService.CallsRoute = Ember.Route.extend({
  model: function() {
    return this.get('store').find('call');
  }
});

