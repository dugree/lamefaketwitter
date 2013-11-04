class TweetsController < ApplicationController

  def index
    @posts = Tweet.order('id DESC')
  end

end
