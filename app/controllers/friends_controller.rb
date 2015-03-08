class FriendsController < ApplicationController

  def index
    @friend = Friend.all
  end

  def new
  	@friend = Friend.new
  end

  def create
    @friend = params[:friend]
    name = @friend[:friend_name]
    dob = @friend[:friend_birthday]
    phone = @friend[:friend_phone]
  	@friend = Friend.new(friend_name: name, friend_birthday: dob, friend_phone: phone)
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
    
    #@friend = Friend.all
    #@friend = Friend.find(:id)
    #@friend = params[:friend]
    @friend = Friend.find(params[:id])

  end

  def update
  	@friend.update friend_params
  	redirect_to @friend
  end



end
