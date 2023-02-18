class User < ApplicationRecord
    has_many :posts
    has_many :favorites
    has_many :definitions, through: :favorites
    has_secure_password  #This provides presence validation
    
    validates_presence_of :email, :username
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    validates :password, length: { minimum: 8 }, on: :create

end
