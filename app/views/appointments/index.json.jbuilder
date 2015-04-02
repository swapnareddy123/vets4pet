json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :customer, :pet, :visit_on, :reason
  json.url appointment_url(appointment, format: :json)
end
