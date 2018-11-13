class ChangeUserTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :sessions, :users
  end
end
