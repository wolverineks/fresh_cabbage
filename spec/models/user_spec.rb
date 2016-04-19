require 'rails_helper'

RSpec.describe User, type: :model do

  # let(:valid_user) { FactoryGirl.create(:user) }

  it "has a valid factory" do
    # Factory.create(:user).should be_valid
  end

  it 'has a password' do
  end

  it 'has a password_confirmation' do
  end

  it 'has a password_digest' do
  end

  it "has a username" do
  end

  it 'has a first name' do
  end

  it 'has a last name' do
  end

  it 'has an email' do
  end

  it 'has a default role that is not critic' do
  end

  it 'has many comments' do
  end

  it 'has many ratings' do
  end

  context "when user is not a critic" do
    it 'is not a critic' do
    end
  end

  context "when user is an critic" do
    it 'is a critic' do
    end

    it 'has many reviews' do
    end
  end

  context "when user is an admin" do
    it 'is an admin' do

    end
  end

  describe "when name is not present" do
  end

  describe "when email is not present" do
  end

  describe "when name is too long" do
  end

  describe "when email format is invalid" do
  end

  describe "when email format is valid" do
  end

  describe "when email address is already taken" do
  end

  describe "when password is not present" do
  end

  describe "when password doesn't match confirmation" do
  end

  describe "with a password that's too short" do
  end

  describe "return value of authenticate method" do
    describe "with valid password" do
    end

    describe "with invalid password" do
    end
  end

  describe "remember token" do
  end

end
