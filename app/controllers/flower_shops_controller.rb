class FlowerShopsController < ApplicationController
  def show
    @flower_shop = FlowerShop.find(params[:id])
    @flowers = @flower_shop.flowers
    # @markers = @flowers.map do |flower|
    #   {
    #     lat: flower.latitude,
    #     lng: flower.longitude,
    #     infoWindow: render_to_string(partial: "info_window", locals: { flower: flower }),
    #     image_url: helpers.asset_url('44-440344_blue-flower-transparent-png-clip-art-image-african')
    #   }
    # end
  end

  def create
    @flower = Flower.new(flower_params)
    @flower.flower_shop = current_user.flower_shop
    if @flower.save!
      redirect_to @flower, notice: 'You flower was successfully added to your shop.'
    else
      render :new
    end
  end
end
