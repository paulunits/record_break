class ArtistAlbumSongGenre < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :artist 
  belongs_to :album 
  belongs_to :song 
  belongs_to :genre 
  
end
