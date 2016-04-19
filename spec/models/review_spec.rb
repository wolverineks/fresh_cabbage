require 'rails_helper'

RSpec.describe Review, type: :model do

  # let(:review) { Review.new(critic: user, movie: movie, body: "Test Review Body") }

  it 'belongs to a critic' do

  end

  it 'belongs to a movie' do

  end

  it 'has a title' do

  end

  it 'has a body' do

  end

  it 'has a rating' do

  end

  it 'has many comments' do

  end

  it 'defaults to not published' do

  end

  context "when not published" do
    it 'is not published' do

    end
  end

  context "when published" do
    it 'is published' do

    end
  end

  describe "when critic is not present" do
  end

  describe "when movie is not present" do
  end

  describe "when title is not present" do
  end

  describe "when title is too short" do
  end

  describe "when body is not present" do
  end

  describe "when body is too short" do
  end

  describe "when rating is not present" do
  end
end
