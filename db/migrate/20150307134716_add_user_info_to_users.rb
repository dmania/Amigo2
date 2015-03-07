class AddUserInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :string
    add_column :users, :user_birthday, :date
    add_column :users, :user_phone, :string
  end
end
