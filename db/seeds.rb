# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create()
post = Post.create(location: [38.898232799999995, -77.0332978], content: "This is the first post")
post2 = Post.create(location: [38.8981619, -77.03339609999999], content: "This is the second post")
post3 = Post.create(location: [38.8981619, -77.03339609999999], content: "This is the third post")
post4 = Post.create(location: [38.8981619, -77.03339609999999], content: "This is the fourth post")
post5 = Post.create(location: [38.8981619, -77.03339609999999], content: "This is the fifth post")
post6 = Post.create(location: [38.8981619, -77.03339609999999], content: "This is the sixth post")
post7 = Post.create(location: [50.8981619, 77.03339609999999], content: "This is the seventh post")

like = Like.create(user: user, post:post, upvote: true)
