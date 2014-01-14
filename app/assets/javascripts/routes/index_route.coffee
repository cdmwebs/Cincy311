CincyService.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo('calls')
