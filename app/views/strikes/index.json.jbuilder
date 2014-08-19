json.array!(@strikes) do |strike|
  json.extract! strike, :id, :onehand, :twohand, :burn, :in, :full
  json.url strike_url(strike, format: :json)
end
