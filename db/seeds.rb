# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([
  { name: 'Project A' },
  { name: 'Secret Project' },
  { name: 'Build prototype' }
])

locations = Location.create([
  { name: 'gov headquarters', city: 'Berlin', country: 'DEU', lat: 52.5151666, long: 13.4014882 },
  { name: 'vienna prater', city: 'Wien', country: 'AUT', lat: 48.2153674, long: 16.3948962 }
])

p1 = projects[0]
l1 = locations[0]

p1.locations << l1
p1.save

projects[1].locations << locations[1]
projects[1].save

projects[2].locations << locations[1]
projects[2].save
