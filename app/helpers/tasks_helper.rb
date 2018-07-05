module TasksHelper

  def get_status(task)
    return 'Completed' if task.is_complete
    task.user_id.nil? ? 'Backlog' : 'Assigned'
  end

end
