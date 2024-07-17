class AddCompanyToCandidate < ActiveRecord::Migration[7.1]
  def change
    add_column :candidates, :company, :string
  end
end
