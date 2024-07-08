class RenamePhoneToPhoneNumberInHrs < ActiveRecord::Migration[7.1]
  def change
    rename_column :hrs, :phone, :phone_number
  end
end
