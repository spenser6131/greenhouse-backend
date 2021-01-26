class PlantsController < ApplicationController
  before_action :find_plant, only: [:show, :update, :destroy]

  def index
    plants = Plant.all
    render json: PlantSerializer.new(plants).to_serialized_json
  end

  def show
    render json: plant
  end

  def create
    plant = Plant.new(plant_params)
    if plant.save
      render json: PlantSerializer.new(plant).to_serialized_json
    else
      render json: {message: "ERROR, YOU MAY CHANGE THIS MESSAGE IN APP/CONTROLLERS/ROOM.RB"}
    end
  end

  def update
    plant.update(plant_params)
    render json: PlantSerializer.new(plant).to_serialized_json
  end

  private

  def plant_params
    params.require(:plant).permit(:species, :light_needs, :humidity_needs, :water_frequency, :last_watering, :last_fertilization, :comments)
  end

  def find_plant
    plant = Plant.find_by(id: params[:id])
  end
end