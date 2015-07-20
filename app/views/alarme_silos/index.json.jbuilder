json.array!(@alarme_silos) do |alarme_silo|
  json.extract! alarme_silo, :id, :alarme_id, :silo_id, :tipo
  json.url alarme_silo_url(alarme_silo, format: :json)
end
