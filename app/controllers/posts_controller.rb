class PostsController < ApplicationController
  def index
    @posts=Post.order("created_at desc").all
  end

  def new
  end

  def create
    post_params = params[:post].permit("title", "content") 
    Post.create(post_params)
    redirect_to posts_path
  end
  
  def show
    
    @post=Post.find(params[:id])
    
  end
  
  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end
  
  
end
