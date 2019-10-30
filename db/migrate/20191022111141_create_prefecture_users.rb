class CreatePrefectureUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :prefecture_users do |t|
      t.references :user ,index:true, foreign_key:true
      t.references :prefecture, index:true, foreign_key:true
      t.timestamps
    end
  end
end
