json.array!(@dispositifs) do |dispositif|
  json.extract! dispositif, :id, :name
  json.url dispositif_url(dispositif, format: :json)
end
