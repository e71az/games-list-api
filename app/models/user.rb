class User < ApplicationRecord
  has_many :favourite_games, dependent: :destroy
  has_many :favourites, through: :favourite_games, source: :game, dependent: :destroy

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 1, maximum: 10 }
end
