class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :user 
  
  validates :title,presence: true,  length: {minimum: 2 , maximum: 20 }
  validates :body,presence: true,  length: { maximum: 200 }
  
  
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
