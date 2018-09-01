class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new 
    self.all << song 
    # or song.save, but the code above is arguably better.
    # The song shouldn't save itself into @@all; the Song class should save the song into @@all.
    # However, it could also be argued that song.save is more elegant and abstract!
    
    song
  end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song
  end 
  
end
