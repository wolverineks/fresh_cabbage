require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  describe "GET #index" do
    xit "assigns all movies as @movies" do
      get :index, {}
      expect(assigns(:movies)).to eq([movie])
    end
  end

  describe "GET #show" do
    xit "assigns the requested movie as @movie" do
      get :show, {:id => movie.to_param}
      expect(assigns(:movie)).to eq(movie)
    end
  end

end
