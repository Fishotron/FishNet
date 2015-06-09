[
{
  "name": "My fish",
  "species": "Smallmouth Bass",
  "image": "http://www.agfc.com/speciesPhotos/fish_bass_smallmouth.jpg",
  "description": "This was a tough catch",
  "width": 9.4,
  "height": 53.5,
  "location": {
    "lat": 5.476795,
    "lng": 100.247197
  }
},
{
  "name": "My other fish",
  "species": "Spotted Bass",
  "image": "http://www.agfc.com/speciesPhotos/fish_bass_spotted.jpg",
  "description": "Another tough catch",
  "width": 7.5,
  "height": 35.7,
  "location": {
    "lat": 5.476795,
    "lng": 100.247197
  }
}
].forEach(function(doc) { db.fish.insert(doc); })
