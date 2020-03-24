class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :category_id , null: false, FK: true
      t.string :name , null: false
      t.string :text , null: false
      t.integer :price , null: false
      t.integer :trading_status , null: false
      t.datetime :completed_at
      t.timestamps
    end
  end
end
