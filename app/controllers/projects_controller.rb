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
    redirect_to project_save
  end
  
  def create
    redirect_to project_save true
  end
  
  def destroy
    project_destroy
    redirect_to projects_path
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
  
  def project_save(create_new = false)
    create_new ? Project.create(project_params) : Project.find(params[:id]).update(project_params)
  end
  
  def project_destroy
    Project.find(params[:id]).destroy
  end
  
end
