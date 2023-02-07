class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :definitions, through: :favorites
    has_secure_password
    
    validates_presence_of :email, :username, :password
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    validates :password, length: { minimum: 8 }

end
