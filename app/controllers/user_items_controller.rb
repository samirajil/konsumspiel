class UserItemsController < ApplicationController
  def new
    @useritem = UserItem.new
    @items = Item.all
  end

  def create
    @useritem = UserItem.new()
    @useritem.number = params[:user_item][:number].to_i
    @item = Item.find(params[:user_item][:item].to_i)

    @useritem.item = @item
    @useritem.user = current_user
    
    if @useritem.save
      raise
      current_user.points += @useritem[:number] * @item[:poins]
      redirect_to players_index_path
    else
      render new
    end
  end

  def useritem_params
    params.require(:user_item).permit(:item, :number)
  end
end
