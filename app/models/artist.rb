class Artist < ActiveRecord::Base
  # Remember to create a migration!

  has_many :artist_album_song_genres
  has_many :genres, through: :artist_album_song_genres
  has_many :albums, through: :artist_album_song_genres
  has_many :songs, through: :artist_album_song_genres

  belongs_to :genre
  belongs_to :album
  belongs_to :song 

  include HTTParty
  base_uri "https://api.discogs.com/database"

  has_many :albums
  belongs_to :genre

  def search_artist(artist)
  	@ar_search = self.class.get("/search?artist=#{artist}&token=#{DISC_SECRET}")
  end
  

  
end
