class UsersController < ApplicationController

  def index
  end

  def login

  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(safe_user_params)
	  	if @user.save
	  	redirect to @user
	  else
	  	render :new
	  end
   end

   def show
   end


	def safe_user_params
		params.require('user').permit(:user_name, :user_phone, :user_birthday)
	end  


end
