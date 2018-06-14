require 'pry'
class Artist
  attr_accessor :name, :genre, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.dup.freeze
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select{|song| song.artist.name == self.name}
  end

  def genres
    songs.map{|song| song.genre}
    #Song.all.select {|song| song.artist.name == self.name}.map{|x| x.genre}
  end


end
