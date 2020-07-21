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
      redirect_to mytweets_path, notice:"tweetしました"
    else
      render :new
    end
  end
  def show
    @mytweet =Mytweet.find(params[:id])
  end
  def edit
    @mytweet = Mytweet.find(params[:id])
  end
  def update
    @mytweet = Mytweet.find(params[:id])
    if @mytweet.update(mytweet_params)
      redirect_to mytweets_path, notice:"編集しました"
    else
      render :edit
    end
  end


  private
  def mytweet_params
    params.require(:mytweet).permit(:content)
  end
end
