class DiscussionsController < ApplicationController
  def show
    @topic = Topic.find(params[:topic_id])
    @discussion = Discussion.find(params[:id])
    render :show
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @discussion = @topic.discussions.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @discussion = @topic.discussions.new(discussion_params)
    if @discussion.save
      redirect_to topic_path(@discussion.topic)
    else
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @discussion = Discussion.find(params[:id])
    render :edit
  end

  def update
    @discussion = Discussion.find(params[:id])
    if @discussion.update(discussion_params)
      redirect_to topic_path(@discussion.topic)
    else
      render :edit
    end
  end

  def destroy
    @discussion= Discussion.find(params[:id])
    @discussion.destroy
    redirect_to topic_path(@discussion.topic)
  end

private
  def discussion_params
    params.require(:discussion).permit(:description)
  end
end
