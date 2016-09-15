class UserAlbum < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :album
end
