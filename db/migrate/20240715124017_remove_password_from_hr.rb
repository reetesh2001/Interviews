class RemovePasswordFromHr < ActiveRecord::Migration[7.1]
  def change
    remove_column :hrs, :password
  end
end
