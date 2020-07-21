class MytweetsController < ApplicationController
  before_action :set_mytweet, only: [:shoe, :edit, :update, :destroy]
  def index
    @mytweets = Mytweet.all
  end
  def new
    @mytweet = Mytweet.new
  end
  def create
    @mytweet = Mytweet.new(mytweet_params)
    if params[:back]
      render :new
    else
      if @mytweet.save
        redirect_to mytweets_path, notice:"tweetしました"
      else
        render :new
      end
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
    if params[:back]
      render  :edit
    else
      if @mytweet.update(mytweet_params)
        redirect_to mytweets_path, notice:"編集しました"
      else
        render :edit
      end
    end
  end
  def confirm
    @mytweet = Mytweet.new(mytweet_params)
    @mytweet.id = params[:id]
    render :new if @mytweet.invalid?
  end
  def destroy
    @mytweet.destroy
    redirect_to mytweets_path, notice:"tweetを削除しました"
  end
  def top
  end

  private
  def mytweet_params
    params.require(:mytweet).permit(:id, :content)
  end
  def set_mytweet
    @mytweet = Mytweet.find(params[:id])
  end
end
