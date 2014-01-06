CincyService.Call = DS.Model.extend({
  type: DS.attr('string'),
});

CincyService.Call.FIXTURES = [
  {
    id: 0,
    type: 'Building vacant and open res'
  },
  {
    id: 1,
    type: 'Sign down/missing'
  },
  {
    id: 2,
    type: 'Trash cart swap 95 gallon'
  }
];

