require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { FactoryGirl(:user) }

  describe "GET #show" do
    xit "assigns the requested user as @user" do
      get :show, {:id => user.to_param}
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "GET #new" do
    xit "assigns a new user as @user" do
      get :new, {}
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "GET #edit" do
    xit "assigns the requested user as @user" do
      get :edit, {:id => user.to_param}
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      xit "creates a new User" do
        expect {
          post :create, user
        }.to change(User, :count).by(1)
      end

      xit "assigns a newly created user as @user" do
        post :create, user
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
      end

      xit "redirects to the created user" do
        post :create, user
        expect(response).to redirect_to(User.last)
      end
    end

    context "with invalid params" do
      xit "assigns a newly created but unsaved user as @user" do
        # Create invalid user
        user.username = ""
        post :create, user
        expect(assigns(:user)).to be_a_new(User)
      end

      xit "re-renders the 'new' template" do
        user.username = ""
        post :create, user
        expect(response).to render_template("new")
      end
    end
  end

end
