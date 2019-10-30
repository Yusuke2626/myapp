class CreateQaforms < ActiveRecord::Migration[5.2]
  def change
    create_table :qaforms do |t|
      t.references :user, forign_key:true
      t.references :house, forign_key:true
      t.text :text
      t.timestamps
    end
  end
end
