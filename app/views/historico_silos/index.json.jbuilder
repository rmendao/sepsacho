json.array!(@historico_silos) do |historico_silo|
  json.extract! historico_silo, :id, :data, :quilograma, :silo_id
  json.url historico_silo_url(historico_silo, format: :json)
end
