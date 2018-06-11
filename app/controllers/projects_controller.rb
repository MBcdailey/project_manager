class ProjectsController < ApplicationController

  def index
    project_list
  end
  
  def show
    project_find
  end
  
  def edit
    project_find
  end
  
  def update
    project_save
    redirect_to project_path
  end
  
  def create
    @project = project_save true
    redirect_to @project
  end
  
  private
  
  def project_params
    params.require(:project).permit(:title, :description)
  end
  
  def project_find
    @project = Project.find(params[:id])
  end
  
  def project_list
    @projects = Project.order(created_at: :desc)
  end
  
  def project_save(new = false)
    new ? Project.create(project_params) : Project.find(params[:id]).update(project_params)
  end
  
end
