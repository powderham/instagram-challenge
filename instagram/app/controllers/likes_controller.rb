class LikesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @post.likes.create
    redirect_to posts_path
  end

end
