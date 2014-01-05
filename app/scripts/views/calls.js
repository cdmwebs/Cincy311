CincyService.CallsView = Ember.View.extend({
  didInsertElement: function () {
    var center = [39.09676, -84.51387],
        controller = this.get('controller'),
        zoomLevel = controller.get('zoomLevel'),
        map = L.map('map').setView(center, zoomLevel);

    L.tileLayer('http://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Tiles courtesy of <a href="http://hot.openstreetmap.org/" target="_blank">Humanitarian OpenStreetMap Team</a>'
    }).addTo(map);

    map.on('moveend', function (e) {
      controller.set('zoomLevel', e.target.getZoom());
      controller.set('mapBounds', e.target.getBounds());
    });

    this.controller.set('map', map);
  }
});
