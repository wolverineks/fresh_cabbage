require 'rails_helper'

RSpec.describe Rating, type: :model do

  let(:rating) { FactoryGirl.create(:rating) }
  let(:movie) { FactoryGirl.create(:movie) }
  let(:user) { FactoryGirl.create(:user) }

  xit 'has a value' do
    expect(rating.value).to be_instance_of Integer
  end

  it 'belongs to a movie' do
    rating.movie = movie
    expect(rating.movie).to eq movie
  end

  it 'belongs to a user' do
    rating.user = user
    expect(rating.user).to eq user
  end

  describe "when value is not present" do
    it 'is not valid' do
      rating.value = nil
      expect(rating).not_to be_valid
    end
  end

  describe "when movie is not present" do
    it 'is not valid' do
      rating.movie = nil
      expect(rating).not_to be_valid
    end
  end

  describe "when user is not present" do
    it 'is not valid' do
      rating.user = nil
      expect(rating).not_to be_valid
    end
  end

  describe "when the value is too high" do
    xit 'is not valid' do
      rating.value = 6
      expect(rating).not_to be_valid
    end
  end

  describe "when the value it too low" do
    xit 'is not valid' do
      rating.value = -1
      expect(rating).not_to be_valid
    end
  end
end
