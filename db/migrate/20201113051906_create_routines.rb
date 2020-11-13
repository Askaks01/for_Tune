class CreateRoutines < ActiveRecord::Migration[6.0]
  def change
    create_table :routines do |t|
      t.string :name,          null: false
      t.references :user,      foreign_key: true
      t.text :descriotion,     null: false
      t.integer :category_id,  null:false 
      t.integer :timeframe_id, null: false 
      t.timestamps
    end
  end
end
