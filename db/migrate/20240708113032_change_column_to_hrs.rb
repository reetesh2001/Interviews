class ChangeColumnToHrs < ActiveRecord::Migration[7.1]
  def change
    change_column :hrs, :phone_number,:string
  end
end
