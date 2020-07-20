class MytweetsController < ApplicationController
  def index
  end
  def new
    @mytweet = Mytweet.new
  end
  def create
    Mytweet.create(content: params[:mytweet][:content])
    redirect_to new_mytweet_path
  end
end
