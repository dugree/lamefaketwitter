class TweetsController < ApplicationController

  def index
    @posts = Tweet.order('id DESC')
    @new_tweet = Tweet.new
  end

  def create
    @new_tweet = Tweet.new(params[:tweet])
    @new_tweet.save
    redirect_to :action => :index
  end
end
