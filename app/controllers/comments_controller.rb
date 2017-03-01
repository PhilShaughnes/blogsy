class CommentsController < ApplicationController

  def show
    @post = Post.find(params[:id])
    render json: @post.comments
  end

end
