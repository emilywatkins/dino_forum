class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    render :index
  end
  def show
    @topic = Topic.find(params[:id])
    render :show
  end
  # def new
  #   @topic = Topic.new
  #   render :new
  # end
  # def create
  #   @topic = Topic.new(topic_params)
  #   if @topic.save
  #     redirect_to  topics_path
  #   else
  #     render :new
  #   end
  # end
end
