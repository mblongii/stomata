class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end

  def create
    Post.create(params[:post])
    redirect_to posts_path
  end

  def show
    post = Post.find(params[:id])
    render '_show', :locals => {:post => post}
  end

end