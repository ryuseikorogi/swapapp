class CreateSwaps < ActiveRecord::Migration[6.0]
  def change
    create_table :swaps do |t|
        t.references :user, null: false, foreign_key: true 
        t.references :post, null: false, foreign_key: true
        t.timestamps
    end
  end
end