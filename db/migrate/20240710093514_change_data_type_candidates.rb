class ChangeDataTypeCandidates < ActiveRecord::Migration[7.1]
  def change
    change_column :candidates, :experience, :integer
  end
end
