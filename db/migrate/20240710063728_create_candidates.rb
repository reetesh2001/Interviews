class CreateCandidates < ActiveRecord::Migration[7.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company_or_college
      t.string :role
      t.string :hr_id
      t.string :qualification

      t.timestamps
    end
  end
end
