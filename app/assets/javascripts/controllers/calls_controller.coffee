CincyService.CallsController = Ember.Controller.extend
  map: null
  zoomLevel: 13
  mapBounds: null

  zoomLevelChanged: (->
    zoomLevel = @get('zoomLevel')
    map = @get('map')
    
    if (zoomLevel != map.getZoom())
      map.setZoom(zoomLevel)
  ).observes('zoomLevel')

  mapChanged: (->
    map = @get('map')
    @set('mapBounds', map.getBounds().getWest())
  ).observes('map')

