require 'rails_helper'

RSpec.describe User, type: :model do

  let(:admin) { FactoryGirl.create(:admin) }
  let(:critic) { FactoryGirl.create(:critic) }
  let(:user) { FactoryGirl.create(:user) }
  let(:review) { FactoryGirl.create(:review) }

  it "has a valid factory" do
    expect(user).to be_valid
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

  it 'has many ratings' do
  end

  context "when user is a user" do
    it 'is a user' do
      expect(user.user?).to be true
    end

    it 'is not an admin' do
      expect(user.admin?).to be false
    end

    it 'is not a critic' do
      expect(user.critic?).to be false
    end
  end

  context "when user is a critic" do
    it 'is a critic' do
      expect(critic.critic?).to be true
    end

    it 'is not an admin' do
      expect(critic.admin?).to be false
    end

    it 'is not a user' do
      expect(critic.user?).to be false
    end

    it 'has many reviews' do
      user.reviews << review
      expect(user.reviews).to include review
    end
  end

  context "when user is an admin" do
    it 'is an admin' do
      expect(admin.admin?).to be true
    end
    it 'is not a critic' do
      expect(admin.critic?).to be false
    end
    it 'is not a user' do
      expect(admin.user?).to be false
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
