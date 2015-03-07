class UsersController < ApplicationController

  def index
  end

  def login

    if user_signed_in? 
      # redirect_to user_path
      # redirect_to @user
    else
      render :login
    end

  end

  def new
  	@user = User.new
    # binding.pry
  end

  def create 
    username = params[:user][:user_name]
    phone = params[:user][:user_phone]
    dob = Date.parse(params[:user][:user_birthday])
    @user = current_user

    @user.user_name = username
    @user.user_phone = phone
    @user.user_birthday = dob
    @user.save


    redirect_to @user

  end

  # def create
  #   dob = params[:user][:user_birthday]
  #   dob = Date.parse(dob)
  #   @user = User.new(safe_user_params)
  #     @user.user_birthday = dob
  #   binding.pry
  #     if @user.save
	 #  	redirect to @user
	 #  else
	 #  	render :new
	 #  end
  #  end

   def show

   end


	def safe_user_params
		params.require('user').permit(:user_name, :user_phone)
	end  


end
