class TweetsController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def edit
  end

  def update
  end

  def destroy
    Tweet.find(params[:id]).destroy
    redirect_to tweets_path
  end

  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def show
  end

  def create
    tweet = Tweet.new(params[:tweet])
    tweet.user = current_user
    if tweet.save 
      redirect_to tweets_path
    else
      redirect_to tweets_path, :alert => "Invalid Tweet"
    end
  end
end
