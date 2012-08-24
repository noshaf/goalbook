class UsersController < ApplicationController
  def show
  	@tweets = Tweet.find_all_by_user_id(params[:id])
  	@user = User.find(params[:id])
  end
end
