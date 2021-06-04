class Game < ApplicationRecord
  has_many :favourite_games, dependent: :destroy
  has_many :favourited_by, through: :favourite_games, source: :user, dependent: :destroy

  validates_presence_of :name, :description, :image, :price
end
