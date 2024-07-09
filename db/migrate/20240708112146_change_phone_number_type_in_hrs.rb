class ChangePhoneNumberTypeInHrs < ActiveRecord::Migration[7.1]
  def change
    def up
      change_column :hrs, :phone, :string
    end
  
    def down
      change_column :hrs, :phone, :integer
    end
  end
end
