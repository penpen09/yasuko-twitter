class MytweetsController < ApplicationController
  def index
    @mytweets = Mytweet.all
  end
  def new
    @mytweet = Mytweet.new
  end
  def create
    @mytweet = Mytweet.new(mytweet_params)
    if @mytweet.save
      redirect_to mytweet_path, notice:"tweetしました"
    else
      render :new
    end
  end
  def show
    @mytweet =Mytweet.find(params[:id])
  end
  private
  def mytweet_params
    params.require(:mytweet).permit(:content)
  end
end
