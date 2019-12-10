class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :tittle
      t.string :text
      t.integer :to_user_id
      t.integer :user_id
      t.integer :open_num
      t.integer :house_id
      t.timestamps
    end
  end
end
