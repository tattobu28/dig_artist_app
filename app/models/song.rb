class Song < ApplicationRecord
  belongs_to :artist
  has_one_attached :image

  validates :title,         presence: true
  validates :composer,      presence: true
  validates :image, presence: true
end
