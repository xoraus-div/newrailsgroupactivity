json.extract! animal, :id, :animalname, :owner_id, :created_at, :updated_at
json.url animal_url(animal, format: :json)
