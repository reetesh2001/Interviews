class RemoveDateTimeFromCandidate < ActiveRecord::Migration[7.1]
  def change
    remove_column :candidates, :date_of_interview
  end
end
