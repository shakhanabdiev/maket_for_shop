class CommentsController < ApplicationController
  def new
  end
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(comments_params)

  	flash[:notice] = "Comment Added"
  end

  private
  def comments_params
  	params.require(:comment).permit(:name, :email, :body, :post_id)
  end
end
