require 'pry'

class Artist 
  attr_accessor :name 
  def initialize(name)
    @name = name
  end 
  def add_song(name)
    title = name 
    new_song = Song.new(title)
    new_song.artist = self 
  end 
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self 
  end 
  def self.song_count 
    Song.all.length  
  end 
  def songs 
    Song.all.select {|song| song.artist == self} 
  end 
end 