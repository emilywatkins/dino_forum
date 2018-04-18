class PostsController < ApplicationController
  def new
    @discussion = Discussion.find(params[:discussion_id])
    @post = @discussion.posts.new
  end

  def create
    @discussion = Discussion.find(params[:discussion_id])
    @topic = @discussion.topic
    @post = @discussion.posts.new(post_params)
    if @post.save
      redirect_to topic_discussion_path(@topic, @discussion)
    else
      render :new
    end
  end

private
  def post_params
    params.require(:post).permit(:body)
  end
end
