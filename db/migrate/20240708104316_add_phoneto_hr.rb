class AddPhonetoHr < ActiveRecord::Migration[7.1]
  def change
    add_column :hrs, :phone, :integer
  end
end
