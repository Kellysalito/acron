class CreateAcronym < ActiveRecord::Migration[5.2]
  def change
    create_table :acronyms do |t|
      t.string :acronym
      t.text :description
      t.integer :user_id
      t.timestamps
    end
     add_index :acronyms, :user_id
  end
end
