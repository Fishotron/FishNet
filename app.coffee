Fish = new Mongo.Collection("fish")

if Meteor.isClient
  
  Template.fishlist.helpers fish: ->
    Fish.find({})
