class WallController < ApplicationController
  def index
  	@user = User.find(current_user)
  	@posts = Post.all.reverse
  end

  def message
  end

  def post
  	@post = Post.create(user:current_user, content:params[:content])
  end
end
