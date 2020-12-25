class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :item, foreign_key: true
      t.string :item_name,               null: false
      t.string :item_text,               null: false
      t.string :item_condition_id,       null: false
      t.string :category_id,             null: false
      t.string :days_to_ship_id,         null: false
      t.string :shipping_prefecture_id,  null: false
      t.timestamps
    end
  end
end
