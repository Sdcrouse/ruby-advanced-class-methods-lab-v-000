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
    song
  end 
end
