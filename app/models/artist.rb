class Artist < ActiveRecord::Base
  # Remember to create a migration!

  include HTTParty
  base_uri "https://api.discogs.com/database"

  has_many :albums
  belongs_to :genre

  def search_artist(artist)
  	@ar_search = self.class.get("/search?artist=#{artist}&token=#{DISC_SECRET}")
  end
  

  
end
