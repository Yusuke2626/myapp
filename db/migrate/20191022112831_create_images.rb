class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :image1  ,null:true
      t.text :image2  ,null:true
      t.text :image3  ,null:true
      t.text :image4  ,null:true
      t.text :image5  ,null:true
      t.references :house, index:true, foreign_key:true
      t.timestamps
    end
  end
end
