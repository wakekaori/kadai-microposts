class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites
  has_many :favoriters, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
