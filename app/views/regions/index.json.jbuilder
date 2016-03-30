json.array!(@regions) do |region|
  json.extract! region, :id, :regions
  json.url region_url(region, format: :json)
end
