class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    render :index
  end

  def show
    @topic = Topic.find(params[:id])
    render :show
  end

  def new
    @topic = Topic.new
    render :new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to  topics_path
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      flash[:notice] = "updated topic"
      redirect_to topics_path
    else
      flash[:alert] = "try again error occured"
      render :edit
    end
  end

private
  def topic_params
    params.require(:topic).permit(:title)
  end
end
