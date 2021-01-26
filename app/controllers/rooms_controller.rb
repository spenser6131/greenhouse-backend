class RoomsController < ApplicationController
  before_action :find_room, only: [:show, :update, :destroy]

  def index
    rooms = Room.all
    render json: RoomSerializer.new(rooms).to_serialized_json
  end

  def show
    render json: room
  end

  def create
    room = Room.new(room_params)
    if room.save
      render json: RoomSerializer.new(room).to_serialized_json
    else
      render json: {message: "ERROR, YOU MAY CHANGE THIS MESSAGE IN APP/CONTROLLERS/ROOM.RB"}
    end
  end

  def update
    room.update(room_params)
    render json: RoomSerializer.new(room).to_serialized_json
  end

  private

  def room_params
    params.require(:room).permit(:name, :humidity, :light)
  end

  def find_room
    room = Room.find_by(id: params[:id])
  end
end