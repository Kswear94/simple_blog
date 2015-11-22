class PostsController < ApplicationController
  
  http_basic_authenticate_with password: ENV["PASSWORD"], except: [:index, :show]
  
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Blog created successfully!"
      redirect_to @post
    else
      redirect_to 'new'
    end
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update
      redirect_to @post
    else
      redirect_to 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    
    redirect_to posts_path
  end
  
  private
  
    def post_params
      params.require(:post).permit(:title, :text)
    end
  
end
