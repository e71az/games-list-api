class Game < ApplicationRecord
  has_one :favourite, dependent: :destroy
  validates_presence_of :name, :description, :image, :price
end
