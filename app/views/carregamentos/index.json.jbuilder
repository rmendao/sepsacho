json.array!(@carregamentos) do |carregamento|
  json.extract! carregamento, :id, :silo_id, :user_silo_id, :data, :farinha, :quilograma
  json.url carregamento_url(carregamento, format: :json)
end
