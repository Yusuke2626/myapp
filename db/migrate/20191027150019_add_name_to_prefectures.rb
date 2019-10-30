class AddNameToPrefectures < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :name, :string ,:limit => 4,:unique => true
  end
end
