# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :firstname => "Inder" , :lastname =>"Singh" , :password => "123" , :image => "" , :email =>"exclusive_jeet@yahoo.com"
u2 = User.create :firstname => "Arun" , :lastname =>"Dhungel" , :password => "123"  ,:image => "" , :email =>"Arun@gmail.com"
u3 = User.create :firstname => "Daniel" , :lastname =>"Meneses" , :password => "123" , :image => "" , :email =>"Daniel@gmail.com"


Tweet.destroy_all
t1 = Tweet.create :content => "This is Inder's Tweet"
t2 = Tweet.create :content => "This is Arun's Tweet"
t3 = Tweet.create :content => "This is Daniel's Tweet"
t4 = Tweet.create :content => "This is Inder's Tweet"
t5 = Tweet.create :content => "This is Arun's Tweet"
t6 = Tweet.create :content => "This is Daniel's Tweet"


Like.destroy_all
l1 = Like.create()
l2 = Like.create()
l3 = Like.create()
l4 = Like.create()
l5 = Like.create()
l6 = Like.create()

# --------------------------------------------------------------------------------

# User + Tweet JOIN (TWEET belongs to USER)
u1.tweets << t1 << t4
u2.tweets << t2 << t5
u3.tweets << t3 << t6


# User + Like JOIN (LIKES belongs to USER)
u1.likes << l1 << l2
u2.likes << l3 << l4
u3.likes << l5 << l6

# Tweet + Like JOIN (TWEET has these LIKES)
t1.likes << l3 << l5
t2.likes << l1 << l6
t3.likes << l2 << l4





