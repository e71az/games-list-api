require "rails_helper"

RSpec.describe "Games API", type: :request do
  let!(:games) { create_list(:game, 1) }
  let(:game_id) { games.first.id }

  describe "GET /games" do
    before { get "/games" }

    it "returns games" do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end

    describe "GET /games/:id" do
      before { get "/games/#{game_id}" }

      context "when the record exists" do
        it "returns the game" do
          expect(json).not_to be_empty
          expect(json["id"]).to eq game_id
        end

        it "returns status code 200" do
          expect(response).to have_http_status(200)
        end
      end

      context "when the record does not exist" do
        let(:game_id) { 100 }

        it "returns status code 404" do
          expect(response).to have_http_status(404)
        end

        it "returns a not found message" do
          expect(response.body).to match(/Couldn't find Game/)
        end
      end
    end

    describe "POST /games" do
      let(:valid_attributes) { { name: "League of Legends", description: "This game sucks", price: 59, iamge: "asdadfsd.com/asd.jpg" } }

      context "when the request is valid" do
        before { post "/games", params: valid_attributes }

        it "creates a game" do
          expect(json["name"]).to eq("League of Legends")
        end

        it "returns status code 201" do
          expect(response).to have_http_status(201)
        end
      end

      context "when the request is invalid" do
        before { post "/games", params: { name: "Victor Games" } }

        it "returns status code 422" do
          expect(response).to have_http_status(422)
        end

        it "returns a validation failure message" do
          expect(response.body).to match(/Validation failed: Name can't be blank/)
        end
      end
    end

    describe "PUT /games/:id" do
      let(:valid_attributes) { { name: "Rainbow Six" } }

      context "when the record exists" do
        before { put "/games/#{game_id}", params: valid_attributes }

        it "updates the record" do
          expect(response.body).to be_empty
        end

        it "returns status code 204" do
          expect(response).to have_http_status(204)
        end
      end
    end

    describe "DELETE /games/:id" do
      before { delete "/games/#{game_id}" }

      it "returns status code 204" do
        expect(response).to have_http_status(204)
      end
    end
  end
end
