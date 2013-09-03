# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
messages = Message.create([
    { body: 'If what you’re doing is not your passion, you have nothing to lose.'},
    { body: 'The person who says something is impossible should not interrupt the person who is doing it.'},
    { body: "If opportunity doesn't knock, build a door."},
    { body: "First they ignore you.  Then they laugh at you. Then they fight you. Then you win."}
   ])

users = User.create([
    { name: 'Joe', email: "joe@user.com", password: 'Testing123', password_confirmation: 'Testing123', message_id: 1},
    { name: 'Ann', email: "ann@user.com", password: 'Testing123', password_confirmation: 'Testing123', message_id: 1}
  ])