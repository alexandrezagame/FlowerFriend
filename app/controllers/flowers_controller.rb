class FlowersController < ApplicationController
  before_action :set_flower, only: [:show, :edit, :update, :destroy]

  def index
    @flowers = Flower.all
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
    params.require(:flower).permit(:name, :species, :picture)
  end
end
