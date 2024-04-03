class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :line_id
      t.string :uuid, null:false, uniqu: true
      t.string :date, null: false
      t.string :reservation_time, null: false
      t.string :fullname, null: false
      t.string :fullname_kana, null: false
      t.string :email, null: false
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
