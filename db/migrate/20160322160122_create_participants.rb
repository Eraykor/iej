class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :last_name
      t.string :first_name
      t.date :birth_date
      t.string :place_of_birth
      t.string :id_number
      t.string :adress
      t.integer :zip_code
      t.string :city
      t.integer :phone
      t.integer :mobile
      t.string :affiliation_process
      t.date :entry_process
      t.date :expected_process
      t.string :entry_solution
      t.string :output_solution

      t.timestamps null: false
    end
  end
end
