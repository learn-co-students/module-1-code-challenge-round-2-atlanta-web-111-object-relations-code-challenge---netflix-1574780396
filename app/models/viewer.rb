class Viewer
  #has many reviews
  #has many movies 
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
    # - `Viewer.all`
    #   - returns an array of all the Viewer instances that have been initialized
  end

  def username
  #   - returns the Viewer's username
    @username
  end 


  def help_viewer_select
    #helper method that selects viewer == self from Review All array
    Review.all.select{|v| v.viewer == self}
  end

  def reviews
  #   - returns an array of `Review` instances associated with the `Viewer` instance.
    help_viewer_select
  end

  def reviewed_movies
  #   - returns an array of `Movie` instances reviewed by the `Viewer` instance.
    help_viewer_select.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
  #   - a `Movie` instance is the only argument
  end 
  
  #   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
  # - `Viewer#rate_movie(movie, rating)`
  #   - a `Movie` instance and a rating (number) are passed in as arguments
  #   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
  #   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
    
end
