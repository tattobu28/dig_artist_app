class Youtube < ApplicationRecord
  is_impressionable counter_cache: true

  belongs_to :artist

  validates :url,           presence: true
  validates :title,         presence: true
  validates :composer,      presence: true
end
