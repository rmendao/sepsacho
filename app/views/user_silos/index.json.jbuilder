json.array!(@user_silos) do |user_silo|
  json.extract! user_silo, :id, :nome, :empresa, :contato, :rfid
  json.url user_silo_url(user_silo, format: :json)
end
