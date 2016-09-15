class Album < ActiveRecord::Base
  # Remember to create a migration!
  has_many :user_albums
  has_many :artist_album_song_genres
  has_many :artists, through: :artist_album_song_genres
  has_many :genres, through: :artist_album_song_genres
  has_many :songs, through: :artist_album_song_genres
  has_many :users, through: :user_albums

  belongs_to :artist
  belongs_to :genre
  belongs_to :song 
  belongs_to :user
end
