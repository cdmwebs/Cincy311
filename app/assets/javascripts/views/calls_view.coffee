CincyService.CallsView = Ember.View.extend
  map: null
  markers: null

  didInsertElement: ->
    center = [39.09676, -84.51387]
    controller = @get('controller')
    zoomLevel = controller.get('zoomLevel')
    @set('map', L.map('map'))
    @set('markers', L.markerClusterGroup())
    map = @get('map')
    map.setView(center, zoomLevel)

    L.tileLayer('http://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Tiles courtesy of <a href="http://hot.openstreetmap.org/" target="_blank">Humanitarian OpenStreetMap Team</a>'
    }).addTo(map)

    map.on 'moveend', (e) ->
      controller.set('zoomLevel', e.target.getZoom())
      controller.set('mapBounds', e.target.getBounds())

    @controller.set('map', map)

  contentDidChange: (->
    map = @get('map')
    return unless map

    @get('controller').get('content').forEach (item, index) =>
      return if item.get('mapped')
      marker = L.marker([item.get('latitude'), item.get('longitude')]).
        bindPopup("#{item.get('address')}<br />#{item.get('description')}")
      item.set('mapped', true)
      @get('markers').addLayer(marker)

    map.addLayer(@get('markers'))
  ).observes('controller.content.@each')

