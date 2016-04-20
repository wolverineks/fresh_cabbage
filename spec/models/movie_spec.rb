require 'rails_helper'

RSpec.describe Movie, type: :model do

  let(:movie) { FactoryGirl.create(:movie) }
  let(:category) { FactoryGirl.create(:category) }
  let(:rating) { FactoryGirl.create(:rating) }
  let(:review) { FactoryGirl.create(:review) }

  it 'has a title' do
    expect(movie.title).to be_instance_of String
  end

  it 'has a runtime' do
    expect(movie.runtime).to be_instance_of Fixnum
  end

  it 'has a MPAA rating' do
    mpaa_ratings = ["G", "PG", "PG-13", "R", "NC-17"]
    expect(mpaa_ratings).to include movie.mpaa_rating
  end

  xit 'has a release_date' do
    expect(movie.release_date).to be_instance_of DateTime
  end

  xit 'has an average user rating' do

  end

  xit 'has an average critic rating' do

  end

  it 'has many categories' do
    category.movies << movie
    expect(movie.categories).to include category
  end

  xit 'has a movie poster' do

  end

  it 'has a synopsis' do
    expect(movie.synopsis).to be_instance_of String
  end

  it 'has many user ratings' do
    movie.ratings << rating
    expect(movie.ratings).to include rating
  end

  it 'has many critic reviews' do
    movie.reviews << review
    expect(movie.reviews).to include review
  end

  describe "when title is not present" do
    it 'is not valid' do
      movie.title = nil
      expect(movie).not_to be_valid
    end
  end

  describe "when mpaa_rating is not present" do
    it 'is not valid' do
      movie.mpaa_rating = nil
      expect(movie).not_to be_valid
    end
  end

  describe "when synopsis is not present" do
    it 'is not valid' do
      movie.synopsis = nil
      expect(movie).not_to be_valid
    end
  end

  describe "when runtime is not present" do
    it 'is not valid' do
      movie.runtime = nil
      expect(movie).not_to be_valid
    end
  end

  describe "when release_date is not present" do
    it 'is valid' do
      movie.release_date = nil
      expect(movie).to be_valid
    end
  end
end
