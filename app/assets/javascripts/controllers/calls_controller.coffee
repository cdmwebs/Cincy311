CincyService.CallsController = Ember.Controller.extend
  map: null
  mapBounds: null
  zoomLevel: 14
  foundCalls: 0

  zoomLevelChanged: (->
    zoomLevel = @get('zoomLevel')
    map = @get('map')
    
    if (zoomLevel != map.getZoom())
      map.setZoom(zoomLevel)
  ).observes('zoomLevel')

  mapBoundsChanged: (->
    bounds = @get('map').getBounds()
    sw = bounds.getSouthWest()
    ne = bounds.getNorthEast()

    @get('store').
      find('call', sw: [sw.lat, sw.lng], ne: [ne.lat, ne.lng]).
      then(@updateMap.bind(this))
  ).observes('map', 'mapBounds')

  foundCalls: (->
    @get('content.length')
  ).property('content.@each')

  updateMap: (response) ->
    @set('content', response)

