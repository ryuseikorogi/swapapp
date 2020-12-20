class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name,      null:false
      t.string :family_name,     null:false
      t.string :first_name_kana, null:false
      t.string :family_name,     null:false
      t.string :nickname,        null:false  
      t.string :email,           null:false
      t.string :password,        null:false
      t.integer :age,            null:false
      t.date :birth_day,         null:false
      t.timestamps               null:false

    end
  end
end
