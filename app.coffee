if Meteor.isClient

  Template.body.helpers
    fishid: ->
      Session.get("fishid")

  Template.fishlist.helpers
    fish: ->
      Fish.find({})

  Template.fishcard.events
    "click .card": (event) ->
      console.log(event.currentTarget)
      Router.go("/" + event.currentTarget.id)

  Template.fishdetail.events
    "click .back.button": ->
      Router.go("/")

  Template.map.rendered = ->
    L.Icon.Default.imagePath = 'packages/bevanhunt_leaflet/images'

    map = L.map 'map', doubleClickZoom: false
    L.tileLayer.provider('OpenStreetMap.Mapnik').addTo(map)
    map.setView this.data.location, 13
    L.marker(this.data.location).addTo(map)