class PostsController < ApplicationController
  def index
  	@categories = Category.all
    if params[:search]
        @posts = Post.search(params[:search]).all.order('created_at DESC')
     else
        @posts = Post.all.order('created_at DESC')
     end
  end

  def show
  	@post = Post.find(params[:id])
  	@categories = Category.all
  	@comment = Comment.new
  	@comments = Comment.all
  end
end
