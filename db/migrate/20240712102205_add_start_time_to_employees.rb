class AddStartTimeToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :interview_time, :time
  end
end
