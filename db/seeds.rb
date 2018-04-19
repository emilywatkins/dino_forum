# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Topic.destroy_all
Discussion.destroy_all
Post.destroy_all

25.times do |i|
  Topic.create!(title: Faker::Seinfeld.quote, is_featured: Faker::Boolean.boolean(0.2))
  @topic_id = Topic.last.id
  5.times do |i|
    @description = Faker::Dune.quote
    Discussion.create!(topic_id: @topic_id, description: @description)
  end
end

p "Created #{Topic.count} topics"
p "Created #{Discussion.count} discussions"
