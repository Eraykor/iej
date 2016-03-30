json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :adress, :zip_code, :city, :parent_organization
  json.url organization_url(organization, format: :json)
end
