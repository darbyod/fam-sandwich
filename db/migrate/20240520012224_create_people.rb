class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.date :dob
      t.text :person_notes
      t.integer :primary_relationship_id
      t.string :user_email

      t.timestamps
    end
  end
end
