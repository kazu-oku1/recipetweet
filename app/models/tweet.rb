class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, presence: true
  validates :material, presence: true
  validates :guide, presence: true
  validates :recipe, presence: true
  validates :image, presence: true
end
