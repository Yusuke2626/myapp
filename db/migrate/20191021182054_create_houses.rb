class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.integer :price
      # t.references :user_id, foreign_key:true
      t.timestamps
    end
  end
end
