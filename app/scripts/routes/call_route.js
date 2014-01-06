CincyService.CallRoute = Ember.Route.extend({
  model: function(model) {
    return this.get('store').find('call', model.call_id);
  }
});

