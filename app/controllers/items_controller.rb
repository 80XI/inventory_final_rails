class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find_by(id: params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @category = Category.find(params[:category_id])
    @item = @category.items.create(item_params)
    redirect_to category_path(@category)
  end

  private
    def item_params
      params.require(:item).permit(:name, :status, :cost_price, :selling_price, :category_id, :quantity, :ideal_quantity, :header_image)
    end
end


