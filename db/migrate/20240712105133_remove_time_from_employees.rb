class RemoveTimeFromEmployees < ActiveRecord::Migration[7.1]
  def change
    remove_column :employees, :interview_time
  end
end
