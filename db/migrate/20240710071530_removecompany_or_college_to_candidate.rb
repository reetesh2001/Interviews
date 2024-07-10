class RemovecompanyOrCollegeToCandidate < ActiveRecord::Migration[7.1]
  def change
    remove_column :candidates, :company_or_college

  end
end
