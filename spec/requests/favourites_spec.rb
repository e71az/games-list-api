require 'rails_helper'

RSpec.describe 'Favourites', type: :request do
  let!(:favourites) { create_list(:favourite, 3) }

  describe 'GET /favourites' do
    before { get '/favourites' }

    it 'returns favourites' do
      expect(json).not_to be_empty
      expect(json.size).to eq(3)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
