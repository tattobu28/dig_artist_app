class Song < ApplicationRecord
  mount_uploader :file, AudiofileUploader
  belongs_to :artist
  has_one_attached :image

  validates :title,         presence: true
  validates :composer,      presence: true
  validates :image, presence: true
  validates :file,  presence: true
end
