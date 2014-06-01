class Game::GettingStartedController < ApplicationController
  before_action :authenticate_user!
  def welcome
  end

  def generate
  end

  def play
  end
end
