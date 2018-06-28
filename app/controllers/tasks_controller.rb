class TasksController < ApplicationController

  def index
    task_list
  end
  
  def show
    task_find
  end
  
  def edit
    task_find
  end
  
  def update
    redirect_to task_save
  end
  
  def create
    redirect_to task_save true
  end
  
  def destroy
    task_destroy
    redirect_to tasks_path
  end
  
  private
  
  def task_params
    params.require(:task).permit(:title, :description, :project_id, :due_date)
  end
  
  def task_find
    @task = Task.find(params[:id])
    @project = Project.find(@task.project_id)
  end
  
  def task_list
    @tasks = Task.order(created_at: :desc)
  end
  
  def task_save
    create_new ? Task.create(task_params) : task_update
  end
  
  def task_update
    task_tmp = Task.find(params[:id])
    task_tmp.update(task_params)
    task_tmpdd
  end
  
  def task_destroy
    Task.find(params[:id]).destroy
  end
  
end
