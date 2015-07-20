json.array!(@alarmes) do |alarme|
  json.extract! alarme, :id, :tipo, :limite, :acao
  json.url alarme_url(alarme, format: :json)
end
