class Movie
  #has many reviews
  #has many viewers
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end


  def title
    @title
  end 


  def movie_select
    #helper method that selects viewer == self from Review All array
    Review.all.select{|movie| movie.movie == self}
  end

  def reviews 
  #   - returns an array of all the `Review` instances for the `Movie`.
    movie_select
  end 

  def reviewers
  #   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.
    movie_select.map{|review| review.viewer}
  end

  def average_rating
  #   - returns the average of all ratings for the `Movie` instance
  #  add all ratings together and divide by the total number of ratings.
    amount = movie_select.length * movie_select 
    movie_select.map{|review| review.rating / amount}
    #NOT FINISHED, NOT WORKING. SUBMITTED AS IS.
  end 

  def self. highest_rated
  #   - returns the `Movie` instance with the highest average rating.
  end 



end
