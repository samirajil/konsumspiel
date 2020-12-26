class UserItemsController < ApplicationController
  def new
    @useritem = UserItem.new
  end

  def create
    @useritem = UserItem.find(params[:id])
    
    if @useritem.save
      redirect_to players_index_path
    else
      render new
    end
  end
end
