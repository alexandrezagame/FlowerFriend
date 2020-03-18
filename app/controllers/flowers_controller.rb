class FlowersController < ApplicationController
  before_action :set_flower, only: [:show, :edit, :update, :destroy]

  def index
    @flowers = Flower.all

    @flowers = Flower.geocoded

    @markers = @flowers.map do |flower|
      {
        lat: flower.latitude,
        lng: flower.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { flower: flower }),
        image_url: helpers.asset_url('44-440344_blue-flower-transparent-png-clip-art-image-african')
      }
    end
  end

  def show
  end

  def create
    @flower = Flower.new(flower_params)
    @flower.user = current_user
    if @flower.save!
      redirect_to @flower, notice: 'You flower was successfully created.'
    else
      render :new
    end
  end

  def update
    if @flower.update(flower_params)
      redirect_to @flower, notice: 'Flower was successfully updated.'
    else
      render :edit
    end
  end

  def edit
  end

  def new
    @flower = Flower.new
  end

  def destroy
    @flower.destroy
    redirect_to flowers_path, notice: "Your flower has been destroyed!"
  end

  private

  def set_flower
    @flower = Flower.find(params[:id])
  end

  def flower_params
    params.require(:flower).permit(:name, :species, :address)
  end
end
