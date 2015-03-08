class FriendsController < ApplicationController

  def index
    @friend = Friend.all
  end

  def new
  	@friend = Friend.new
  end

  def create
    # @friend = params[:friend]
    # name = @friend[:friend_name]
    # dob = @friend[:friend_birthday]
    # phone = @friend[:friend_phone]
  	# @friend = Friend.new(friend_name: name, friend_birthday: dob, friend_phone: phone)
  	@friend = Friend.new(:friend_name, :friend_birthday, :friend_phone)
    if @friend.save
  		redirect_to @friend
  	else
  		render 'new'
  	end
  end

  def show
  	@friend = Friend.find(params[:id])
  end

  def edit
    @friend = Friend.find(params[:id])

  end

  def update
    friend = params[:friend][:friend_name]
    phone = params[:friend][:friend_phone]
    dob = Date.parse(params[:friend][:friend_birthday])

    @friend = Friend.find(params[:id])

    @friend.friend_name = friend
    @friend.friend_phone = phone
    @friend.friend_birthday = dob
    @friend.save

    redirect_to @friend
  end

  def destroy
    Friend.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to friends_path
  end

end
