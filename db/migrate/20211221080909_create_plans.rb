class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.integer :category_id, null: false
      t.time :time, null: false
      t.date :date, null: false
      t.timestamps
    end
  end
end
