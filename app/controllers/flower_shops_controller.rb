class FlowerShopsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  
  def index
    @flower_shops = FlowerShop.all
  end
  
  def show
    @flower_shop = FlowerShop.find(params[:id])
    @flowers = @flower_shop.flowers
  end

  def new
    @flower_shop = FlowerShop.new
  end

  def create
    @flower_shop = FlowerShop.new(flower_shop_params)
    @flower_shop.user = current_user
    if @flower_shop.save!
      redirect_to @flower_shop, notice: 'You shop was successfully created...'
    else
      render :new
    end
  end

  private

  def flower_shop_params
    params.require(:flower_shop).permit(:name, :address)
  end
end
