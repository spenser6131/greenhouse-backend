class RoomSerializer

  def initialize(room_object)
    @room = room_object
  end

  def to_serialized_json
    @room.to_json({
      except: [:created_at, :updated_at]
    })
  end
    
end