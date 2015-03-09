class Friend < ActiveRecord::Base
belongs_to :user

 attr_accessible :friend_name, :friend_phone, :friend_birthday

end
