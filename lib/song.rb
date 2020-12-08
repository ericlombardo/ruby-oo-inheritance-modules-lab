require 'pry'

class Song
  include Memorable::InstanceMethods  # brings instance methods in from nested module
  extend Memorable::ClassMethods  # brings class methods in from nested module
  extend Findable # brings in class methods from module
  include Paramable # brings in instance methods from module
  attr_accessor :name # name has set and get methods
  attr_reader :artist  # artists just have get
  @@songs = []  # tracks all songs

  def self.all  # get method for Song.all (allows abstraction in modules with self.class.all)
    @@songs
  end

  def artist=(artist) # setter method to assign artist
    @artist = artist
  end
end
