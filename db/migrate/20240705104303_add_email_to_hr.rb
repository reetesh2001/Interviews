class AddEmailToHr < ActiveRecord::Migration[7.1]
  def change
    add_column :hrs, :email, :string
  end
end
