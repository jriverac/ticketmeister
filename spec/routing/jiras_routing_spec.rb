require "rails_helper"

RSpec.describe JirasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jiras").to route_to("jiras#index")
    end

    it "routes to #new" do
      expect(:get => "/jiras/new").to route_to("jiras#new")
    end

    it "routes to #show" do
      expect(:get => "/jiras/1").to route_to("jiras#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jiras/1/edit").to route_to("jiras#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/jiras").to route_to("jiras#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/jiras/1").to route_to("jiras#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/jiras/1").to route_to("jiras#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jiras/1").to route_to("jiras#destroy", :id => "1")
    end

  end
end
