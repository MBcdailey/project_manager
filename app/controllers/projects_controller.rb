class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc)
  end
  def show
    @p = Project.find(params[:id])
  end
  def create
    Project.create(project_params)
    redirect_to root_path
  end
  
  private
  
  def project_params
    params.permit(:title, :description)
  end
end
