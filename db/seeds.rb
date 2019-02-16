# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :firstname => "Inder" , :lastname =>"Singh" , :handle =>"Inder123", :password => "123" , :image => "https://vignette.wikia.nocookie.net/youngjusticefanon/images/5/5f/Dark_crusader.png/revision/latest?cb=20121028141527" ,:email =>"exclusive_jeet@yahoo.com"
u2 = User.create :firstname => "Arun" , :lastname =>"Dhungel" , :handle =>"Arun456", :password => "123"  ,:image => "https://vignette.wikia.nocookie.net/heroeswebcomic/images/e/e0/Ult_Spiderman%281%29.png/revision/latest?cb=20101118021953" , :email =>"Arun@gmail.com"
u3 = User.create :firstname => "Daniel" , :lastname =>"Menesses" , :handle =>"Daniel8910", :password => "123" , :image => "https://static.jeffbullas.com/wp-content/uploads/2015/04/23-Epic-Twitter-Facts-and-Statistics-That-May-Surprise-You.jpg" , :email =>"Daniel@gmail.com"


Tweet.destroy_all
t1 = Tweet.create :content => "I'm at the hospital"
t4 = Tweet.create :content => "Oh god help"
t10 = Tweet.create :content => "Why isnt anyone helping me"
t7 = Tweet.create :content => ".."
t2 = Tweet.create :content => "Has anyone seen my wallet?"
t5 = Tweet.create :content => "I really need my wallet please guys"
t8 = Tweet.create :content => "My opal card is in there"
t11 = Tweet.create :content => "How am i going to get home guys"
t3 = Tweet.create :content => "React is fun"
t6 = Tweet.create :content => "I need to write longer sentences so i know how tweets look when text wraps."
t9 = Tweet.create :content => "Mas beer amigos"
t12 = Tweet.create :content => "Fucking stupid fuck heatwave"


Like.destroy_all
l1 = Like.create()
l2 = Like.create()
l3 = Like.create()
l4 = Like.create()
l5 = Like.create()
l6 = Like.create()

# --------------------------------------------------------------------------------

# User + Tweet JOIN (TWEET belongs to USER)
u1.tweets << t1 << t4 << t10 << t7
u2.tweets << t2 << t5 << t8 << t11
u3.tweets << t3 << t6 << t9 << t12


# User + Like JOIN (LIKES belongs to USER)
u1.likes << l1 << l2
u2.likes << l3 << l4
u3.likes << l5 << l6

# Tweet + Like JOIN (TWEET has these LIKES)
t1.likes << l3 << l5
t2.likes << l1 << l6
t3.likes << l2 << l4
