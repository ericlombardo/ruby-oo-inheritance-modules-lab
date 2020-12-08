require 'pry'

class Artist
  include Memorable::InstanceMethods  # brings instance methods in from nested module
  extend Memorable::ClassMethods  # brings class methods in from nested module
  extend Findable # brings in class methods from module
  include Paramable # brings in instance methods from module
  attr_accessor :name # name has set and get methods
  attr_reader :songs  # songs just have get

  @@artists = []

  def initialize  # run initialize method in super module
    super
    @songs = [] # when that has executed we finish with this code
  end

  def self.all  # sets getter for Artist.all (this allows abstraction in modules using self.class.all)
    @@artists
  end

  def add_song(song)  # adds song to @songs array
    @songs << song
    song.artist = self
  end

  def add_songs(songs)  # adds multiple songs to @songs array
    songs.each { |song| add_song(song) }
  end
end
