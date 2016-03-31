json.array!(@admin_employees) do |admin_employee|
  json.extract! admin_employee, :id, :last_name, :first_name, :organization, :phone, :email, :id_number
  json.url admin_employee_url(admin_employee, format: :json)
end
