class DashboardController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def new
    redirect_to root_path
  end
end
