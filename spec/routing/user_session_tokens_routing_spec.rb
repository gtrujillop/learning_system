require "rails_helper"

RSpec.describe UserSessionTokensController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_session_tokens").to route_to("user_session_tokens#index")
    end

    it "routes to #new" do
      expect(:get => "/user_session_tokens/new").to route_to("user_session_tokens#new")
    end

    it "routes to #show" do
      expect(:get => "/user_session_tokens/1").to route_to("user_session_tokens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_session_tokens/1/edit").to route_to("user_session_tokens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_session_tokens").to route_to("user_session_tokens#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_session_tokens/1").to route_to("user_session_tokens#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_session_tokens/1").to route_to("user_session_tokens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_session_tokens/1").to route_to("user_session_tokens#destroy", :id => "1")
    end

  end
end
