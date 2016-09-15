class CreateUserAlbums < ActiveRecord::Migration
  def change
  	create_table :user_albums do |t|
      t.belongs_to :user, index: true
	  t.belongs_to :album, index: true

	  t.timestamps null: false
	end 
  end
end
