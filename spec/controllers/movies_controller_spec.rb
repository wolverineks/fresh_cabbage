require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  describe "GET #index" do
    it "assigns all movies as @movies" do
      get :index, {}
      expect(assigns(:movies)).to eq([movie])
    end
  end

  describe "GET #show" do
    it "assigns the requested movie as @movie" do
      get :show, {:id => movie.to_param}
      expect(assigns(:movie)).to eq(movie)
    end
  end

end
