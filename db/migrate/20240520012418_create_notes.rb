class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.integer :person_id
      t.text :body

      t.timestamps
    end
  end
end
