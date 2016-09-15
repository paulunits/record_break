class Genre < ActiveRecord::Base
  # Remember to create a migration!
  has_many :artist_album_song_genres
  has_many :artists, through: :artist_album_song_genres
  has_many :albums, through: :artist_album_song_genres
  has_many :songs, through: :artist_album_song_genres

  belongs_to :artist
  belongs_to :album
  belongs_to :song 
end
