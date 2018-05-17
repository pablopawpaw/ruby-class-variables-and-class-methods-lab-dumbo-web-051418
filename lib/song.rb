require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  # attr_reader :artists, :genres, :artist_count
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count+=1
    @@artists << artist
    @@genres << genre
  end
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq.flatten
  end
  def self.genres
    @@genres.uniq.flatten
  end
  def self.genre_count
    genre_hash = {}
    @@genres.each do |type|
      if genre_hash.include?(type)
        genre_hash[type] +=1
      else
        genre_hash[type] = 1
      end
    end
    genre_hash
  end
  # binding.pry
  def self.artist_count
    artist_hash = {}
    @@artists.each do |singer|
      if artist_hash.include?(singer)
        artist_hash[singer] +=1
      else
        artist_hash[singer] = 1
      end
    end
    artist_hash
  end

end
