json.array!(@silos) do |silo|
  json.extract! silo, :id, :capacidade, :tipo, :exploracao_id
  json.url silo_url(silo, format: :json)
end
