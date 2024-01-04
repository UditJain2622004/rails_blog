class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    # dependent: :destroy is for deleting all the comments.posts associated, when a user is deleted
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
