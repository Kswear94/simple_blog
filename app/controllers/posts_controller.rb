class PostsController < ApplicationController
  
  def new
    @post = Posts.new
  end
  
end
