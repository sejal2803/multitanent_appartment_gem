class PostsController < ApplicationController

  before_action :current_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(post_params)

    redirect_to posts_path
  end

  def edit
    
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:text, :description)
  end

  def current_post
    @post = Post.find(params[:id])
  end
end
