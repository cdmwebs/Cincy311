var CincyService = window.CincyService = Ember.Application.create();

$(document).foundation();

/* Order and include as you please. */
require('scripts/controllers/*');
require('scripts/store');
require('scripts/models/*');
require('scripts/routes/*');
require('scripts/views/*');
require('scripts/router');
