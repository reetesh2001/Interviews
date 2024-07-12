class RenameColumnFromHr < ActiveRecord::Migration[7.1]
  def change
    rename_column :hrs ,:passward ,:password
  end
end
