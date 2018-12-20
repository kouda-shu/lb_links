class DbController < ApplicationController
  def user_index
    @users = User.all
  end

  def link_index
    @links = Link.all
  end
end
