class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
      t.string :title
      t.string :format
      t.integer :year
      t.integer :artist_id
      t.integer :user_id

	   t.timestamps null: false
    end
  end
end
