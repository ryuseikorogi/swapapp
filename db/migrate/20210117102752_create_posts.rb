class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, 
      foreign_key: true
        t.string :post_name,                null: false
        t.string :post_discription,              null: false
        t.string :prefecture_id, null: false
        t.string :days_arrive_id,        null: false
        t.string :post_condition_id,           null: false
        t.string :category_id,              null: false
      t.timestamps
    end
  end
end
