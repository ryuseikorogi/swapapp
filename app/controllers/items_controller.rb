class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :destroy]

    def index
      @items=Item.all
    end

    def new
      @item = Item.new
    end

    def create
      Item.create(item_params)
    end
    
    private
    def item_params
      params.require(:item).permit(
        :item_name,
        :item_text,
        :item_image,
        :item_condition_id,
        :category_id,
        :days_to_ship_id,
        :shipping_prefecture_id,
      )
    end
  end