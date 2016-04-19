require "rails_helper"

RSpec.describe MoviesController, type: :routing do
  describe "routing" do

    context "when admin logged in" do
      xit "routes to #index" do
        expect(:get => "/movies").to route_to("movies#index")
      end

      xit "routes to #new" do
        expect(:get => "/movies/new").to route_to("movies#new")
      end

      xit "routes to #show" do
        expect(:get => "/movies/1").to route_to("movies#show", :id => "1")
      end

      xit "routes to #edit" do
        expect(:get => "/movies/1/edit").to route_to("movies#edit", :id => "1")
      end

      xit "routes to #create" do
        expect(:post => "/movies").to route_to("movies#create")
      end

      xit "routes to #update via PUT" do
        expect(:put => "/movies/1").to route_to("movies#update", :id => "1")
      end

      xit "routes to #update via PATCH" do
        expect(:patch => "/movies/1").to route_to("movies#update", :id => "1")
      end

      xit "routes to #destroy" do
        expect(:delete => "/movies/1").to route_to("movies#destroy", :id => "1")
      end
    end

    context "when admin not logged in" do
      xit "routes to #index" do
        expect(:get => "/movies").to route_to("movies#index")
      end

      xit "routes to #new" do
        expect(:get => "/movies/new").to route_to("welcome#index")
      end

      xit "routes to #show" do
        expect(:get => "/movies/1").to route_to("movies#show", :id => "1")
      end

      xit "routes to #edit" do
        expect(:get => "/movies/1/edit").to route_to("movies#edit", :id => "1")
      end

      xit "routes to #create" do
        expect(:post => "/movies").to route_to("movies#create")
      end

      xit "routes to #update via PUT" do
        expect(:put => "/movies/1").to route_to("movies#update", :id => "1")
      end

      xit "routes to #update via PATCH" do
        expect(:patch => "/movies/1").to route_to("movies#update", :id => "1")
      end

      xit "routes to #destroy" do
        expect(:delete => "/movies/1").to route_to("movies#destroy", :id => "1")
      end
    end

  end
end
