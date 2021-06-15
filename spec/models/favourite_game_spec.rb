require 'rails_helper'

RSpec.describe FavouriteGame, type: :model do
  it { should belong_to(:game) }
  it { should belong_to(:user) }
  it { should validate_presence_of(:game_id) }
  it { should validate_presence_of(:user_id) }
end
