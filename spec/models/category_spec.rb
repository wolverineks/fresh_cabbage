require 'rails_helper'
require 'factory_girl'

RSpec.describe Category, type: :model do

  let(:category) { FactoryGirl.create(:category) }
  let(:movie1) { FactoryGirl.create(:movie) }
  let(:movie2) { FactoryGirl.create(:movie) }
  let(:movie3) { FactoryGirl.create(:movie) }
  let(:movies) { [movie1, movie2, movie3] }

  it 'has a title' do
    category.name = "Test Category Title"
    expect(category.name).to eq "Test Category Title"
  end

  it 'has many movies' do
    category.movies << movies
    expect(category.movies).to eq movies
  end

  describe "when name is not present" do
    it 'is not valid' do
      category.name = ""
      expect(category).not_to be_valid
    end
  end

  describe "when name is present" do
    it 'is valid' do
      category.name = "Test Category"
      expect(category).to be_valid
    end
  end

end
