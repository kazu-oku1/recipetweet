class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :material, :guide, :recipe, :image).merge(user_id: current_user.id)
  end


end
