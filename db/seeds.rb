# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Krissi.find_each(&:destroy)
User.find_each(&:destroy)

@krissi = Krissi.create!(linkedin: 'https://www.linkedin.com', instagram: 'https://www.instagram.com', facebook: 'https://www.facebook.com', contact_body: 'I have contact methods', bio_body: 'I was born')
8.times { |n| Sample.create!(caption: n.to_s, category: n.to_s, alt: n.to_s, krissi: @krissi) }
3.times { Parallax.create!(krissi: @krissi) }

User.create!(email: Figaro.env.krissi_email, password: Figaro.env.krissi_password)
