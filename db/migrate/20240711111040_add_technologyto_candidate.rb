class AddTechnologytoCandidate < ActiveRecord::Migration[7.1]
  def change
    add_column :candidates, :technology, :string
  end
end
