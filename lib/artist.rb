class Artist

  @@song_count = 0

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_instance)
    @songs << song_instance
    song_instance.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    @@song_count
  end
end
