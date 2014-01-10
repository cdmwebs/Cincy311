CincyService.CallsRoute = Ember.Route.extend
  model: ->
    @get('store').find('call')

