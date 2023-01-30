class Bookmark < ApplicationRecord
  belongs_to :collection
  belongs_to :game
end
