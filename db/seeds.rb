# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "blog post #{blog}",
    body: "Stuff here"
  )
end

puts "10 blogs created"

5.times do |skill|
  Skill.create(
    title: "Demo #{skill}",
    percentUtilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio|
  Portfolio.create(
      title: "protfolio title #{portfolio}",
      subTitle: "new service",
      body: "body text",
      mainImage: "https://via.placeholder.com/600x400",
      thumbImage: "https://via.placeholder.com/300x200"
  )
end

puts "9 portfolios created"
