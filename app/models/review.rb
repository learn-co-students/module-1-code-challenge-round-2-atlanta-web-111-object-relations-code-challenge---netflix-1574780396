class Review
    #Belongs to movies & Viewers.
    #Potential joiner, remember single source of truth
    attr_reader :viewer, :movie, :rating 
    @@all = []

    def initialize(viewer, movie, rating=5)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end 
  
    def rating
    #   - returns the rating for the `Review` instance
        @rating
    end 

    def self.all 
        @@all 
    #   - returns an array of all initialized `Review` instances
    end 
        
    def viewer
    #   - returns the `Viewer` instance associated with the `Review` instance
        @viewer
    end 

    def movie
    #   - returns the `Movie` instance associated with the `Review` instance
        @movie
    end 

end
