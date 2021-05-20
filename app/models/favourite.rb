class Favourite < ApplicationRecord
  belongs_to :game
  validates_presence_of :game_id
end
