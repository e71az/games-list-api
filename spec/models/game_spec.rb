require 'rails_helper'

RSpec.describe Game, type: :model do
  it {
    should have_one(:favourite).dependent(:destroy)
  }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:image) }
end
