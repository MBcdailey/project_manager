class AddTaskStatusIdToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :task_status, index: true  
  end
end
