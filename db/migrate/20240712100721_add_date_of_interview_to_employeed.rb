class AddDateOfInterviewToEmployeed < ActiveRecord::Migration[7.1]
  def change
    add_column :employees, :date_of_interview, :date

  end
end
