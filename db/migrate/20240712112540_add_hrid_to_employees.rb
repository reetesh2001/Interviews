class AddHridToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :hr_id, :integer
  end
end
