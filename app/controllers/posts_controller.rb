class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if Post.create(title: params[:post][:title])
      redirect_to root_path
    end
  end

  private

  def post_params
      params.require(:post).permit(:title)
  end
end
