# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#title only
movie1 = Movie.new("Hey bro") 
movie2 = Movie.new("RANDOM")
movie3 = Movie.new("idek bruh")

#username req
stannn = Viewer.new("stannn") 
bobayye = Viewer.new("bobayye")
billy123 = Viewer.new("billy123")

#review:
#viewer, movie, rating
review1 = Review.new(stannn, movie1, 8)
review2 = Review.new(bobayye, movie2, 10)
review3 = Review.new(billy123, movie2, 3)
review4 = Review.new(billy123, movie3)
#last is to test if default rating works


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
