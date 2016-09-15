class CreateArtistAlbumSongGenres < ActiveRecord::Migration
  def change
  	create_table :artist_album_song_genres do |t|
      t.belongs_to :artist, index: true
	  t.belongs_to :album, index: true
	  t.belongs_to :song, index: true
	  t.belongs_to :genre, index: true

	  t.timestamps null: false
	end 
  end
end
