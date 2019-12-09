class ChangeDatatypePrefectureCordOfAddress < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses,:prefecture_code, 'string'
  end
end
