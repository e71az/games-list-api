require "rails_helper"

RSpec.describe "Favourites", type: :request do
  let!(:games) { create_list(:game, 10) }

  let!(:favourites) {
    Favourite.create!([{
      game_id: games.first.id,

    },
                       {
      game_id: games.last.id,
    }])
  }

  describe "GET /favourites" do
    before { get "/favourites" }

    it "returns favourites" do
      expect(json).not_to be_empty
      expect(json.size).to eq(2)
    end

    it "returns status code 200" do
      puts json
      expect(response).to have_http_status(200)
    end
  end
end
