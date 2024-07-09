class AddPasswordDigestToHrs < ActiveRecord::Migration[7.1]
  def change
    add_column :hrs, :password_digest, :string
  end
end
