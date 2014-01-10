# for more details see: http://emberjs.com/guides/models/defining-models/

CincyService.Call = DS.Model.extend
  csrNumber: DS.attr 'string'
  status: DS.attr 'string'
  srType: DS.attr 'string'
  description: DS.attr 'string'
  receivedAt: DS.attr 'date'
  location: DS.attr 'string'
  address: DS.attr 'string'
  community: DS.attr 'string'
  censusTract: DS.attr 'decmial'
  priority: DS.attr 'string'
  method: DS.attr 'string'
  parcelNum: DS.attr 'string'
  user: DS.attr 'string'

