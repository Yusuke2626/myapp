class AddColumnToMails < ActiveRecord::Migration[5.2]
  def change
    add_column :mails, :open_num, :string
  end
end
