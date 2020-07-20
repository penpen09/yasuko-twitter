class MytweetsController < ApplicationController
  def index
    @mytweets = Mytweet.all
  end
  def new
    @mytweet = Mytweet.new
  end
  def create
    Mytweet.create(content: params[:mytweet][:content])
    redirect_to new_mytweet_path
  end
  def show
    @mytweet =Mytweet.find(params[:id])
  end
  private
  def mytweet_params
    params.require(:mytweet).permit(:content)
  end
end
