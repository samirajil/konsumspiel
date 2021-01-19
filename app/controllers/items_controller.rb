class ItemsController < ApplicationController
  def index
    @items = Item.all.sort_by(&:item_points).reverse
  end
end
