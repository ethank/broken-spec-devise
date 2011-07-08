class UsersController < ApplicationController

  def index
  	@users = User.all
  end
  
  def show
  	if !params[:id].nil?
  		@user = User.find(params[:id])
  	else
  		flash.now[:error] = 'No users specified'
  	end
  end

end
