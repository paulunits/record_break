class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt 

  has_many :user_albums
  has_many :albums, through: :user_albums

  belongs_to :album

  
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
end
end
