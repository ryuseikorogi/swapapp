class CreatePostsAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :posts_addresses do |t|
      t.string     :prefecture_id,null: false
      t.string     :address ,null: false, foreign_key:true
      t.string     :zip_code ,null: false
      t.string     :city     ,null: false
      t.string     :building,null: false
      t.string     :phone_number,null: false
      t.references     :swap,null: false,foreign_key:true
      t.timestamps
    end
  end
end