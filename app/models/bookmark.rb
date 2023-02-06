class Bookmark < ApplicationRecord
  belongs_to :collection
  belongs_to :game

  validates :game, uniqueness: { scope: :collection }
end
