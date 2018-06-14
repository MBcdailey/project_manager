class AddProjectIdToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :project, index: true  
  end
end
