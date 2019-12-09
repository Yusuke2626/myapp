class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.string :tittle
      t.text :text
      t.integer :to_user_id
      t.references :user ,foreign_key:true
      t.timestamps
    end
  end
end
