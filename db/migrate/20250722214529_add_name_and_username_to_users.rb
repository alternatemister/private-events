class AddNameAndUsernameToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
  end
end
