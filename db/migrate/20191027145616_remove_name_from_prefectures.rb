class RemoveNameFromPrefectures < ActiveRecord::Migration[5.2]
  def change
    remove_column :prefectures, :name, :sring
  end
end
