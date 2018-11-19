class User < ApplicationRecord
    validates :username, uniqueness: {
    scope: :username,
    message: "should be unique "
  }
  
    has_many :comments
    has_many :likes
    has_many :photos
    has_many :liked_photos, :through => :likes, :source => :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
