class Artist < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  is_impressionable counter_cache: true

  belongs_to :genre
  belongs_to :city
  has_many :songs, dependent: :destroy
  has_one_attached :image
  has_many :youtubes, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :artist_id, presence: true, format: { with: /\A[a-zA-Z0-9]+\z/, message: 'は半角英数字で入力してください' }
  validates :name,      presence: true
  validates :member,    presence: true
  validates :city_id,   presence: true, numericality: { other_than: 0, message: 'を入力してください' }
  validates :genre_id,  presence: true, numericality: { other_than: 1, message: 'を入力してください' }
  validates :image,     presence: true
  validates :info,      length: {maximum: 250}
end
