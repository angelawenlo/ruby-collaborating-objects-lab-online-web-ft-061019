class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

   def self.find_by_name(name)
    self.all.detect {|a| a.name == name}
  end

   def self.find_or_create_by_name(name)
     if artist = self.find_by_name(name)
       artist
     else
       self.create(name)
     end
  end

def print_songs
  @songs.each do |song|
  puts song.name
  end
end
end
