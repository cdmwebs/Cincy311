# For more information see: http://emberjs.com/guides/routing/

CincyService.Router.map ->
  @resource 'calls', ->
    @resource 'call', path: '/:call_id'

