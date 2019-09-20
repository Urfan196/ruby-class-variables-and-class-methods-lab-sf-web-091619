require 'pry'
class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres =[]
@@artists = []

  def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << self.genre
  @@artists << self.artist
  end

  def self.count
  @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
  genre_count ={}
    @@genres.each do |element|
    binding.pry
      if @@genres[element] += 1
      else genre_count = 1
      end
      binding.pry
    end
  end

end
