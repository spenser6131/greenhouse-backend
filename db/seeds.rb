Plant.destroy_all
Room.destroy_all

no_room = Room.create(name: "No Home", humidity: 1, light: 1)
bathroom = Room.create(name: "Bathroom", humidity: 4, light: 2)
bedroom = Room.create(name: "Bedroom", humidity: 1, light: 3)
livingroom = Room.create(name: "Living Room", humidity: 1, light: 4)
greenhouse = Room.create(name: "Green House", humidity: 5, light: 5)

Plant.create(room_id: bathroom.id, species: "Jade Plant", light_needs: 3, humidity_needs: 1, water_frequency: 14, last_watering: Date.today-10, last_fertilization: Date.today-30)
Plant.create(room_id: bathroom.id, species: "Pothos", light_needs: 4, humidity_needs: 3, water_frequency: 10, last_watering: Date.today, last_fertilization: Date.today-30)
Plant.create(room_id: bathroom.id, species: "Orchid", light_needs: 1, humidity_needs: 3, water_frequency: 7, last_watering: Date.today-1, last_fertilization: Date.today-30)
Plant.create(room_id: bedroom.id, species: "Dracaena", light_needs: 1, humidity_needs: 4, water_frequency: 3, last_watering: Date.today-3, last_fertilization: Date.today-30)
Plant.create(room_id: bedroom.id, species: "Spider Plant", light_needs: 1, humidity_needs: 2, water_frequency: 5, last_watering: Date.today-6, last_fertilization: Date.today-30)
Plant.create(room_id: bedroom.id, species: "Rubber Plant", light_needs: 4, humidity_needs: 2, water_frequency: 7, last_watering: Date.today-5, last_fertilization: Date.today-30)
Plant.create(room_id: livingroom.id, species: "Aloe Vera", light_needs: 3, humidity_needs: 1, water_frequency: 20, last_watering: Date.today-15, last_fertilization: Date.today-30)
Plant.create(room_id: livingroom.id, species: "Snake Plant", light_needs: 5, humidity_needs: 1, water_frequency: 14, last_watering: Date.today, last_fertilization: Date.today-30)
Plant.create(room_id: greenhouse.id, species: "Peace Lily", light_needs: 5, humidity_needs: 5, water_frequency: 1, last_watering: Date.today-1, last_fertilization: Date.today-30)
Plant.create(room_id: greenhouse.id, species: "Ficus", light_needs: 4, humidity_needs: 4, water_frequency: 4, last_watering: Date.today-4, last_fertilization: Date.today-30)
Plant.create(room_id: greenhouse.id, species: "Bromeliad", light_needs: 3, humidity_needs: 2, water_frequency: 15, last_watering: Date.today-16, last_fertilization: Date.today-30)
Plant.create(room_id: no_room.id, species: "Bonsai", light_needs: 2, humidity_needs: 1, water_frequency: 8, last_watering: Date.today-8, last_fertilization: Date.today-30)
Plant.create(room_id: no_room.id, species: "Monstera", light_needs: 1, humidity_needs: 4, water_frequency: 3, last_watering: Date.today-5, last_fertilization: Date.today-30)