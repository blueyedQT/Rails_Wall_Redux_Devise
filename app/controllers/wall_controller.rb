class WallController < ApplicationController
  def index
  	@user = User.find(current_user)
  	@posts = Post.all.reverse
  	@post = Post.new
  end

  def message
  end

  def post
  	@post = Post.create(user:current_user, content:params[:post][:content])
  	if @post.save
  		render text: 'Your post was successfull!'
  	else
  		render @post.errors.full_messages
  	end
  end
end
