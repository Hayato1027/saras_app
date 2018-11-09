class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
    post
  end

  def update
    post.update(posts_params)
  end

  def destroy
    post.destroy
    redirect_to posts_path
  end

  private

  def post
    @post ||= Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :content)
  end
end
