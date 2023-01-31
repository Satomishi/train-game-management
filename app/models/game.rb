class Game < ApplicationRecord
  has_many :bookmarks
  has_many :collections, through: :bookmarks

  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :description, length: { minimum: 10 }

  STATUS_TYPES = %w[Possédé Souhaité Non-désiré vide]
end
