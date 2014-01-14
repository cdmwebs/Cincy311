CincyService.CallRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('calls').set('selectedCall', model)

