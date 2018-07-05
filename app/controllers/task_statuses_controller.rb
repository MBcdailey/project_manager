class TaskStatusesController < ApplicationController

  def index
  end
  
  def show
  end
  
  def update
    task_status_save
  end
  
  def create
    task_status_save true
  end
  
  private
  
  def task_status_params
    params.require(:task_status).permit(:name)
  end
  
  def task_status_find
    @task_status = TaskStatus.find(params[:id])
  end
  
  def task_status_list
    @task_statuses = TaskStatus.order(created_at: :desc)
  end
  
  def task_status_save(create_new = false)
    create_new ? TaskStatus.create(task_status_params) : task_status_update
  end
  
  def task_status_update
    task_status_tmp = TaskStatus.find(params[:id])
    task_status_tmp.update(task_status_params)
    task_status_tmp
  end
  
  def task_status_destroy
    TaskStatus.find(params[:id]).destroy
  end
  
end
