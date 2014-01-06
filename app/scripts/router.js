CincyService.Router.map(function () {
  this.resource('calls', function() {
    this.resource('call', { path: '/:call_id' });
  });
});
