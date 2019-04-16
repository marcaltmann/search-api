# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

latlngs = [
  { lat: 52.521944, lng: 13.413056 },
  { lat: 52.507222, lng: 13.3325 },
  { lat: 52.455556, lng: 13.319722 },
  { lat: 52.466667, lng: 13.25 },
  { lat: 52.515833, lng: 13.454167 },
  { lat: 52.515831, lng: 13.453969 },
  { lat: 48.138611, lng: 11.573889 },
  { lat: 48.140442, lng: 11.557723 },
  { lat: 48.353783, lng: 11.786086 },
  { lat: 51.053769, lng: 13.724825 },
  { lat: 51.040278, lng: 13.731389 },
  { lat: 51.051883, lng: 13.741575 },
  { lat: 48.214722, lng: 16.402222 },
  { lat: 48.185, lng: 16.377778 },
  { lat: 48.208493, lng: 16.373118 },
  { lat: 50.110278, lng: 8.681667 },
  { lat: 50.109678, lng: 8.669339 },
  { lat: 50.033056, lng: 8.570556 },
  { lat: 46.51942, lng: 6.63448 },
  { lat: 46.200013, lng: 6.149985 }
]

20.times do |index|
  location = Location.create({
    lat: latlngs[index][:lat],
    lng: latlngs[index][:lng]
  })

  project = Project.create({
    name: Faker::Company.name,
    description: Faker::Company.bs,
    logo: Faker::Company.logo,
    locations: [location]
  })
end
