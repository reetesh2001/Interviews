class AddColumnsToHr < ActiveRecord::Migration[7.1]
  def change
    add_column :hrs, :status, :string
    add_column :hrs, :passward, :integer
  end
end
