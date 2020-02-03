require 'pry'

class Artist 
  attr_accessor :name 
  def initialize(name)
    @name = name
  end 
  def add_song(name)
    new_song = Song.new(name)
    new_song.artist = self 
  end 
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self 
  end 
  def song_count 
    songArr = Song.all.select {|song| song.artist == self}
    songArr.length 
    binding.pry 
  end 
  def songs 
    Song.all.select {|song| song.artist == self} 
  end 
end 