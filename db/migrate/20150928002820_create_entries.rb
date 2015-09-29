class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :entry_type
      t.text :input
      
      t.timestamps null: false
    end
  end
end
