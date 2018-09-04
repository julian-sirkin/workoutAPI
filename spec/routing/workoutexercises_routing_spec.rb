require "rails_helper"

RSpec.describe WorkoutexercisesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/workoutexercises").to route_to("workoutexercises#index")
    end


    it "routes to #show" do
      expect(:get => "/workoutexercises/1").to route_to("workoutexercises#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/workoutexercises").to route_to("workoutexercises#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/workoutexercises/1").to route_to("workoutexercises#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/workoutexercises/1").to route_to("workoutexercises#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/workoutexercises/1").to route_to("workoutexercises#destroy", :id => "1")
    end

  end
end
