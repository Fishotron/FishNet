Router.route('/', function (){
    this.render("fishlist", { 
        fish: Fish.find({}) ,
        layoutTemplate: "appBody"
    });
});

Router.route("/:_id", function(){
    console.log(this.params._id);
    this.render("fishdetail", { 
        data: function(){ 
            return {
                fish: Fish.findOne({ _id: new Meteor.Collection.ObjectID(this.params._id)}) 
            }
        }.bind(this),
        layoutTemplate: "appBody"
    });
});