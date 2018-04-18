class DiscussionsController < ApplicationController
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

private
  def discussion_params
    params.require(:discussion).permit(:description)
  end
end
