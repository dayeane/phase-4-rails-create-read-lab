class PlantsController < ApplicationController
  def create
    plant = Plant.create(plant_params)
    render json: plant, except: [:create_at, :updated_at], status: :created
  end

  def index
    plants = Plant.all
    render json: plants, except: [:create_at, :updated_at]
  end

  def show
    plant = Plant.find_by(id: params[:id])
    if plant
      render json: plant, except: [:create_at, :updated_at]
    else
      render json: "Plant not found"
    end
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
