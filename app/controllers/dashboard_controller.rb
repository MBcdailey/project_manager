class DashboardController < ApplicationController
  def index
  end
  
  def new
    redirect_to root_path
  end
end
