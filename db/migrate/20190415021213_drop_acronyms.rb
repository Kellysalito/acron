class DropAcronyms < ActiveRecord::Migration[5.2]
  def change
    drop_table :acronyms
  end
end
