json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :category, :breed, :age, :weight, :date
  json.url pet_url(pet, format: :json)
end
