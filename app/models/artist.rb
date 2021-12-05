class Artist < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :artist_id, presence: true
  validates :name,      presence: true
  validates :member,    presence: true
  validates :city,      presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :genre,     presence: true, numericality: { other_than: 1, message: "can't be blank" }

end
