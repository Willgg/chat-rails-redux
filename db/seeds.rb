require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Message.destroy_all
User.destroy_all
Channel.destroy_all

Channel.create(name: 'paris')
Channel.create(name: 'general')
Channel.create(name: 'react')
User.create(email: 'will@mail.com', password: 'william')
User.create(email: 'ed@mail.com', password: 'edward')
User.create(email: 'seb@mail.com', password: 'sebastien')

Channel.all.each do |channel|
  User.all.each do |user|
    Message.create!(user: user, channel: channel, content: Faker::Hipster.sentence)
  end
end