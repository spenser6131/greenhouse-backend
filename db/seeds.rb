Plant.destroy_all
Space.destroy_all

bathroom = Space.create(name: "Bathroom", humidity: 4, light: 2)
bedroom = Space.create(name: "Bedroom", humidity: 1, light: 3)
livingroom = Space.create(name: "Living Room", humidity: 1, light: 4)
greenhouse = Space.create(name: "Green House", humidity: 5, light: 5)
test1 = Space.create(name: "test1", humidity: 1, light: 1)
test2 = Space.create(name: "test2", humidity: 1, light: 1)

Plant.create(space_id: bathroom.id, species: "Jade Plant", light_requirement: 3, humidity_requirement: 1, water_frequency: 14, last_watering: Date.today-10, last_fertilization: Date.today-30)
Plant.create(space_id: bathroom.id, species: "Pothos", light_requirement: 4, humidity_requirement: 3, water_frequency: 10, last_watering: Date.today, last_fertilization: Date.today-30)
Plant.create(space_id: bathroom.id, species: "Orchid", light_requirement: 1, humidity_requirement: 3, water_frequency: 7, last_watering: Date.today-1, last_fertilization: Date.today-30)
Plant.create(space_id: bedroom.id, species: "Dracaena", light_requirement: 1, humidity_requirement: 4, water_frequency: 3, last_watering: Date.today-3, last_fertilization: Date.today-30)
Plant.create(space_id: bedroom.id, species: "Spider Plant", light_requirement: 1, humidity_requirement: 2, water_frequency: 5, last_watering: Date.today-6, last_fertilization: Date.today-30)
Plant.create(space_id: bedroom.id, species: "Rubber Plant", light_requirement: 4, humidity_requirement: 2, water_frequency: 7, last_watering: Date.today-5, last_fertilization: Date.today-30)
Plant.create(space_id: livingroom.id, species: "Aloe Vera", light_requirement: 3, humidity_requirement: 1, water_frequency: 20, last_watering: Date.today-15, last_fertilization: Date.today-30)
Plant.create(space_id: livingroom.id, species: "Snake Plant", light_requirement: 5, humidity_requirement: 1, water_frequency: 14, last_watering: Date.today, last_fertilization: Date.today-30)
Plant.create(space_id: greenhouse.id, species: "Peace Lily", light_requirement: 5, humidity_requirement: 5, water_frequency: 1, last_watering: Date.today-1, last_fertilization: Date.today-30)
Plant.create(space_id: greenhouse.id, species: "Ficus", light_requirement: 4, humidity_requirement: 4, water_frequency: 4, last_watering: Date.today-4, last_fertilization: Date.today-30)
Plant.create(space_id: greenhouse.id, species: "Bromeliad", light_requirement: 3, humidity_requirement: 2, water_frequency: 15, last_watering: Date.today-16, last_fertilization: Date.today-30)
Plant.create(space_id: "", species: "Bonsai", light_requirement: 2, humidity_requirement: 1, water_frequency: 8, last_watering: Date.today-8, last_fertilization: Date.today-30)
Plant.create(space_id: "", species: "Monstera", light_requirement: 1, humidity_requirement: 4, water_frequency: 3, last_watering: Date.today-5, last_fertilization: Date.today-30)