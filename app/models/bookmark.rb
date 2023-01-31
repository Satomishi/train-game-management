class Bookmark < ApplicationRecord
  belongs_to :collection
  belongs_to :game

  validates :gam, uniqueness: { scope: :collection }
end
