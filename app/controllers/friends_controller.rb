class FriendsController < ApplicationController

  def index
  end

  def new
  	@friend = Friend.new
  end

  def create
  	@friend = Friend.new
  	if @friend.save
  		redirect_to @friend
  	else
  		render 'new'
  	end
  end

  def show
  end


end
