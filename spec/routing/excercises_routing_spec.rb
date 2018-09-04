require "rails_helper"

RSpec.describe ExcercisesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/excercises").to route_to("excercises#index")
    end


    it "routes to #show" do
      expect(:get => "/excercises/1").to route_to("excercises#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/excercises").to route_to("excercises#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/excercises/1").to route_to("excercises#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/excercises/1").to route_to("excercises#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/excercises/1").to route_to("excercises#destroy", :id => "1")
    end

  end
end
