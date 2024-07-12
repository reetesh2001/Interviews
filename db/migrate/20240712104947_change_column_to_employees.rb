class ChangeColumnToEmployees < ActiveRecord::Migration[7.1]
  def change
    change_column :employees, :date_of_interview, :datetime
  end
end
