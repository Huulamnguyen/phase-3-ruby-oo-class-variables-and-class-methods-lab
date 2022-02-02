require "pry"
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
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
        @@genres
    end

    def self.artists
        @@artists
    end

    def self.genre_count
        @@genres.group_by { |v| v }.map { |k, v| [k, v.size] }.to_h
    end

    def self.artist_count
        @@artists.group_by { |v| v }.map { |k, v| [k, v.size] }.to_h
    end

end

song1 = Song.new("99 Problems", "Jay-Z", "rap")
song2 = Song.new("Peaches", "Justin Bieber", "R&B")
song3 = Song.new("Lover", "Shawn Mender", "pop")
song4 = Song.new("WAP", "Cardi B", "rap")
song5 = Song.new("Baby", "Justin Bieber", "R&B")
binding.pry