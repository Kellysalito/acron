class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.timestamps
    end
     add_index :words, :user_id
  end
end

     
