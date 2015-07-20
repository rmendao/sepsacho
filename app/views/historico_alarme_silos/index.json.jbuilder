json.array!(@historico_alarme_silos) do |historico_alarme_silo|
  json.extract! historico_alarme_silo, :id, :alarme_silo_id, :date
  json.url historico_alarme_silo_url(historico_alarme_silo, format: :json)
end
