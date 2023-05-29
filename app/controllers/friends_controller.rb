  class FriendsController < ApplicationController
  def index
  end

  def edit
  end

  def show
  end
  def friend_list    
    @friends = current_user.receive_requests.where(is_accept: true)
  end
  
end
