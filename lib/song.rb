require 'pry'

class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0 
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
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
        hash = Hash.new(0)
        @@genres.each do |i| 
            hash[i] += 1 
        end 
        hash.each do |g, c|
            hash[g] = c
        end
        hash 
    end   

    def self.artist_count
        hash = Hash.new(0)
        @@artists.each do |i| 
            hash[i] += 1 
        end 
        hash.each do |a, c|
            hash[a] = c
        end
        hash 
    end 
end 