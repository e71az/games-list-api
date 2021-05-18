require 'rails_helper'

RSpec.describe Game, type: :model do
  describe 'model tests' do
    it 'does something' do
      should have_one(:favourite).dependent(:destroy)
    end
  end
end
