class PlantsController < ApplicationController

  before_action :find_plant, only: [:show, :update, :destroy]

  def index
    @plant_data = Plant.all
    render_plant_data
  end

  def show
    render_plant_data
  end

  def create
    @plant_data = Plant.new(plant_params)
    if @plant_data.save
      render_plant_data
    else
      render json: {message: "ERROR, YOU MAY CHANGE THIS MESSAGE IN APP/CONTROLLERS/PLANTS_CONTROLLER.RB"}
    end
  end

  def update
    @plant_data.update(plant_params)
    render_plant_data
  end

  def destroy
    find_plant
    @plant_data.destroy
  end

  def unassigned_plants
    @plant_data = Plant.unassigned
    render_plant_data
  end

  private

  def plant_params
    params.require(:plant).permit(:species, :light_requirement, :humidity_requirement, :water_frequency, :last_watering, :last_fertilization, :comments, :space_id)
  end

  def find_plant
    @plant_data = Plant.find_by(id: params[:id])
  end

  def render_plant_data
    render json: PlantSerializer.new(@plant_data).to_serialized_json
  end

end