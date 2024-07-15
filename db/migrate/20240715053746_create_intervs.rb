class CreateIntervs < ActiveRecord::Migration[7.1]
  def change
    create_table :intervs do |t|
      t.string :status
      t.string :feedback
      t.integer :round
      t.datetime :interview_time
      t.integer :hr_id
      t.integer :employee_id
      t.integer :candidate_id
    end
  end
end
