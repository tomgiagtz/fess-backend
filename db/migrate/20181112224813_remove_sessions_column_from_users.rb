class RemoveSessionsColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :session
  end
end
