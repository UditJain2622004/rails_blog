class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 ,maximum:50}
    validates :body, presence: true, length: { minimum: 10 ,maximum:100}
    belongs_to :user
    # dependent: :destroy is for deleting all the comments associated, when a post is deleted
    has_many :comments, dependent: :destroy
end
