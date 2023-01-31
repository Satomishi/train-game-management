class Collection < ApplicationRecord
  belongs_to :user_id
  has_many :bookmarks
  has_many :games, through: :bookmarks

  validates :name, :description, presence: true
  validates :name, uniqueness: true
end
