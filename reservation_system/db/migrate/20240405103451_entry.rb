class Entry < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :date, null: false
      t.string :reservation_time, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :first_name_kana, null: false
      t.string :last_name_kana, null: false
      t.string :email, null: false
      t.timestamps
    end
  end
end
