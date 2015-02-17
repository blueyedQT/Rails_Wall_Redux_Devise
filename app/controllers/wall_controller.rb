class WallController < ApplicationController
  def index
  	@user = User.find(current_user)
  end

  def message
  end

  def post
  end
end
