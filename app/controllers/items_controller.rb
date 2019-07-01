class ItemsController < ApplicationController

  def index
    @items = Items.all
  end

  def merchant_index
    @items = Itmes.find(params[:merchant_id])
  end

  def new
  end

  def create
    Items.create!(item_params)
    redirect_to '/items'
  end

  def show
    @item = Items.find(params[:id])
  end

  def edit
    @item = Items.find(params[:id])
  end

  def update
    @merchant = Merchant.find(params[:merchant_id])
    @item = @merchant.items.create!(item_params)
    @item.update(item_params)
    @item.save
    redirect_to "/merchants/#{@merchant.id}/items"
  end

  private

  def item_params
    params.permit(:name, :description, :price, :image, :status, :quantity, :merchant_name)
  end

end
