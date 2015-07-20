json.array!(@exploracaos) do |exploracao|
  json.extract! exploracao, :id, :localizacao, :nome, :tipo
  json.url exploracao_url(exploracao, format: :json)
end
