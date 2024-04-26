# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
published_at = Time.now

user1 = User.create(
  name:"Rodrigo",
  email:"raoo@algo.cl",
  password:"123456"
)
user2 = User.create(
  name:"Alejandro",
  email:"aoo@algo.cl",
  password:"7891011"
)
user3 = User.create(
  name:"John Doe",
  email:"jd@algo.cl",
  password:"171819"
)
user4 = User.create(
  name:"Benjita",
  email:"benjames@algo.cl",
  password:"202122"
)
user5 = User.create(
  name:"Nicolas",
  email:"ninostodak@algo.cl",
  password:"202122"
)

post1 = Post.create(
  title:"El mejor post = post de todos",
  content:"Este es el mejor post = post de todos",
  published_at: published_at,
  answers_count:10,
  likes_count:20,
  user_id:user1
)
post2 = Post.create(
  title:"Hola que tal",
  content:"Estoy haciendo el lab de web",
  published_at: published_at,
  answers_count:10,
  likes_count:20,
  user_id:user2
)
post3 = Post.create(
  title:"LAB",
  content:"LAB",
  published_at: published_at,
  answers_count:10,
  likes_count:10,
  user_id:user3
)
post4 = Post.create(
  title:"post",
  content:"post = post",
  published_at: published_at,
  answers_count:2,
  likes_count:10,
  user_id:user3
)
post5 = Post.create(
  title:"1er post = post",
  content:"Es mi 1er post = post",
  published_at: published_at,
  answers_count:10,
  likes_count:10,
  user_id:user4,
)
post6 = Post.create(
  title:"LAB",
  content:"Estoy haciendo el lab",
  published_at: published_at,
  answers_count:10,
  likes_count:10,
  user_id:user4
)
post7 = Post.create(
  title:"post = Post",
  content:"Es mi primer post",
  published_at: published_at,
  answers_count:2,
  likes_count:3,
  user_id:user5
)
post8 = Post.create(
  title:"post = post",
  content:"Es mi 2do post",
  published_at: published_at,
  answers_count:10,
  likes_count:10,
  user_id:user4
)
post9 = Post.create(
  title:"hola",
  content:"hola como va",
  published_at: published_at,
  answers_count:10,
  likes_count:10,
  user_id:user5
)
post10 = Post.create(
  title:"post",
  content:"subo un post = post",
  published_at: published_at,
  answers_count:10,
  likes_count:10,
  user_id:user1
)


tag1 = Tag.create(
  name: "Stodakianos"
)
tag2 = Tag.create(
  name: "Web"
)
tag3 = Tag.create(
  name: "Lab"
)
tag4 = Tag.create(
  name: "Tag 1"
)
tag5= Tag.create(
  name: "Hola"
)

post1.tags << tag1
post2.tags << tag2
post3.tags << tag3
post4.tags << tag4
post5.tags << tag5
post6.tags << tag1
post7.tags << tag2
post8.tags << tag3
post9.tags << tag4
post10.tags << tag5
