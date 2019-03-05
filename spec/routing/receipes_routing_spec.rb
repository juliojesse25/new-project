require "rails_helper"

RSpec.describe ReceipesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/receipes").to route_to("receipes#index")
    end


    it "routes to #show" do
      expect(:get => "/receipes/1").to route_to("receipes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/receipes").to route_to("receipes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/receipes/1").to route_to("receipes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/receipes/1").to route_to("receipes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/receipes/1").to route_to("receipes#destroy", :id => "1")
    end

  end
end
