class AddColumnToHouse < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :house_age, :integer
  end
end
