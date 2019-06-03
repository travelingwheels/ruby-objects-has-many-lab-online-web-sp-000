class Song 
  
  attr_accessor :artist, :name, :genre 
  @@all = []
  def initialize(name)
    @name = name 
    @genre = genre
    @@all << self
  end
end