class ChangeDatatypeOpenNumOfMails < ActiveRecord::Migration[5.2]
  def change
    change_column :mails, :open_num, :integer
  end
end
