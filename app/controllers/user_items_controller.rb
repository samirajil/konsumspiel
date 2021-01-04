class UserItemsController < ApplicationController
  def new
    @useritem = UserItem.new
    @items = Item.all
  end

  def create
    @useritem = UserItem.new()
    @useritem.number = params[:user_item][:number].to_i
    @item = Item.find(params[:user_item][:item].to_i) if params[:user_item][:item] != ""
    @useritem.item = @item
    @useritem.user = current_user
    @useritem.description = params[:user_item][:description]
    
    if @useritem.save
      current_user.points += @useritem[:number] * @item[:item_points]
      current_user.save
      redirect_to players_index_path
    else
      @items = Item.all
      render :new
    end
  end

  def index
    @useritems = UserItem.where(user: current_user)
  end

  def useritem_params
    params.require(:user_item).permit(:item, :number)
  end
end
