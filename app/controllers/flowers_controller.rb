class FlowersController < ApplicationController
  def index
    @flowers = Flower.all
  end

  def create
    @flower = Flower.new(flower_params)

    if @flower.save
      redirect_to @flower, notice: 'You flower was successfully created.'
    else
      render :new
    end
  end

  def new
    @flower = Flower.new
  end

  private

  def flower_params
    params.require(:flower).permit(:name, :species)
  end
end
