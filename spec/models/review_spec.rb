require 'rails_helper'

RSpec.describe Review, type: :model do

  let(:review) { FactoryGirl.create(:review) }

  it 'belongs to a reviewer' do
    expect(review.reviewer).to be_instance_of User
  end

  it 'belongs to a movie' do
    expect(review.movie).to be_instance_of Movie
  end

  xit 'has a title' do
    expect()
  end

  it 'has a body' do
    expect(review.body).to be_instance_of String
  end

  it 'defaults to not published' do
    expect(review.published).to be false
  end

  context "when not published" do
    it 'is not published' do
      expect(review.published?).to be false
    end
  end

  context "when published" do
    it 'is published' do
      review.published = true
      expect(review.published?).to be true
    end
  end

  describe "when reviewer is not present" do
    it 'is not valid' do
      review.reviewer = nil
      expect(review).not_to be_valid
    end
  end

  describe "when movie is not present" do
    it 'is not valid' do
      review.movie = nil
      expect(review).not_to be_valid
    end
  end

  describe "when title is not present" do
    xit 'is not valid' do
      review.title = nil
      expect(review).not_to be_valid
    end
  end

  describe "when title is too short" do
    xit 'does something' do
      review.title = "123"
      expect(review).not_to be_valid
    end
  end

  describe "when body is not present" do
    it 'is not valid' do
      review.body = nil
      expect(review).not_to be_valid
    end
  end

  describe "when body is too short" do
    it 'is not valid' do
      review.body = "123"
      expect(review).not_to be_valid
    end
  end
end
