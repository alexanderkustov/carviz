class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def submit_car

  end
end
