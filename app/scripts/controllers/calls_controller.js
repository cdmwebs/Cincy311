CincyService.CallsController = Ember.Controller.extend({
  map: null,
  zoomLevel: 13,
  mapBounds: null,

  zoomLevelChanged: function () {
    var zoomLevel = this.get('zoomLevel'),
        map = this.get('map');
    
    if (zoomLevel != map.getZoom()) {
      map.setZoom(zoomLevel);
    }
  }.observes('zoomLevel'),

  mapChanged: function() {
    var map = this.get('map');
    this.set('mapBounds', map.getBounds().getWest());
  }.observes('map'),
});
