require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:comment) { FactoryGirl.create(:comment) }

  it 'belongs to a user' do
    expect(comment.user).to be_a User
  end

  it 'belongs to a review' do
    expect(comment.review).to be_a Review
  end

  it 'has a body' do
    expect(comment.body).to be_instance_of String
  end

  describe "when user is not present" do
    it 'is not valid' do
      comment.user = nil
      expect(comment).not_to be_valid
    end
  end

  describe "when user is present" do
    it 'is valid' do
      expect(comment).to be_valid
    end
  end
end
