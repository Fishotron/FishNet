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
      console.log "Card clicked", this._id
      Session.set("fishid", this._id)
