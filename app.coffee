Fish = new Mongo.Collection("fish")

if Meteor.isClient

  Template.body.helpers
    fishid: ->
      Session.get("fishid")

  Template.fishlist.helpers
    fish: ->
      Fish.find({})

  Template.fishdetail.helpers
    fish: ->
      Fish.findOne(Session.get("fishid"))

  Template.fishcard.events
    "click .card": ->
      Session.set "fishid", this._id

  Template.fishdetail.events
    "click .back.button": ->
      Session.set "fishid", undefined

  Template.map.rendered = ->
    L.Icon.Default.imagePath = 'packages/bevanhunt_leaflet/images'

    map = L.map 'map', doubleClickZoom: false
    L.tileLayer.provider('OpenStreetMap.Mapnik').addTo(map)
    map.setView this.data.location, 13
    L.marker(this.data.location).addTo(map)
