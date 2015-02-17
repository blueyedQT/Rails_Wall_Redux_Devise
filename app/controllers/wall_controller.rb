class WallController < ApplicationController
  def index
  	@user = User.find(current_user)
  	@post = Post.new
  	@comment = Comment.new
  	@posts = Post.all.reverse
  	@comments = Comment.all
  end

  def comment
  	@comment = Comment.create(user:current_user, content:params[:comment][:content], post:Post.find(params[:comment][:post]))
  	if @comment.save
  		flash[:notice] = 'Your comment was successful!'
  	else
  		flash[:errors] = @comment.errors.full_messages
  	end
  	redirect_to root_path
  end

  def post
  	@post = Post.create(user:current_user, content:params[:post][:content])
  	if @post.save
  		flash[:notice] = 'Your post was successfull!'
  	else
  		flash[:errors] = @post.errors.full_messages
  	end
  end
end
