json.array!(@employees) do |employee|
  json.extract! employee, :id, :last_name, :first_name, :organization, :phone, :email, :id_number
  json.url employee_url(employee, format: :json)
end
