json.array!(@vets) do |vet|
  json.extract! vet, :id, :name, :address, :city, :state, :zip, :school, :experience
  json.url vet_url(vet, format: :json)
end
