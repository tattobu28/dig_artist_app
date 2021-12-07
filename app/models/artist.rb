class Artist < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :city

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :artist_id, presence: true
  validates :name,      presence: true
  validates :member,    presence: true
  validates :city_id,      presence: true, numericality: { other_than: 0, message: 'を入力してください' }
  validates :genre_id,     presence: true, numericality: { other_than: 1, message: 'を入力してください' }
end
