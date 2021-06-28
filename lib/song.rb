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
        @@genres.push(genre)
        @@artists.push(artist)
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
        out = Hash.new
        unique_genres = self.genres
        unique_genres.each do |genre|
            out[genre] = @@genres.count(genre)
        end
        out
    end
    def self.artist_count
        out = Hash.new
        unique_artists = self.artists
        unique_artists.each do |artist|
            out[artist] = @@artists.count(artist)
        end
        out
    end
end