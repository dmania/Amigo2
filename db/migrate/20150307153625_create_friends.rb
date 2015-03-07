class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :friend_name
      t.string :friend_birthday
      t.string :friend_phone

      t.timestamps null: false
    end
  end
end
