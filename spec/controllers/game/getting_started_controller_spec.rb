require 'spec_helper'

describe Game::GettingStartedController, :type => :controller do

  describe "GET 'welcome'" do
    it "returns http success" do
      get 'welcome'
      expect(response).to be_success
    end
  end

  describe "GET 'generate'" do
    it "returns http success" do
      get 'generate'
      expect(response).to be_success
    end
  end

  describe "GET 'play'" do
    it "returns http success" do
      get 'play'
      expect(response).to be_success
    end
  end

end
